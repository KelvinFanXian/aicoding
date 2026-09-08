#!/usr/bin/env bash
set -euo pipefail

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "尚未初始化 Git；跳过已跟踪文件检查。"
  exit 0
fi

failed=0

if git ls-files | grep -Eq '^(\.local|\.scratch|tmp)/'; then
  echo "错误：本地观察或临时目录被 Git 跟踪。"
  git ls-files | grep -E '^(\.local|\.scratch|tmp)/' || true
  failed=1
fi

candidate_files=()
while IFS= read -r file; do
  candidate_files+=("$file")
done < <(git ls-files --cached --others --exclude-standard -z | tr '\0' '\n')

if ((${#candidate_files[@]} > 0)); then
  if grep -IInE '(/[U]sers/[^/]+/|/[h]ome/[^/]+/|[A-Za-z]:\\[U]sers\\)' "${candidate_files[@]}"; then
    echo "错误：已跟踪文件中发现本机绝对路径。"
    failed=1
  fi

  if grep -IInE '(BEGIN (RSA |EC |OPENSSH )?PRIVATE KEY|AKIA[0-9A-Z]{16}|ghp_[A-Za-z0-9]{30,}|github_pat_[A-Za-z0-9_]{20,})' "${candidate_files[@]}"; then
    echo "错误：已跟踪文件中疑似包含凭据。"
    failed=1
  fi

  private_patterns=".local/private-patterns.txt"
  if [[ -f "$private_patterns" ]]; then
    while IFS= read -r pattern; do
      [[ -z "$pattern" || "$pattern" == \#* ]] && continue
      if grep -IInF -- "$pattern" "${candidate_files[@]}"; then
        echo "错误：公开候选文件中发现本地配置的项目专有内容。"
        failed=1
      fi
    done < "$private_patterns"
  fi
fi

if ((failed != 0)); then
  exit 1
fi

echo "自动检查通过。仍需人工确认不存在项目名称、业务数据和专有内容。"
