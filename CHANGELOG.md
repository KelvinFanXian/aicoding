# 更新日志

记录经验的去向与实际变化：是新增 Skill，还是归纳到已有 Skill。具体工作方法以对应 Skill 为准，提交细节通过 Git 历史追溯。

## 2026-09-22 · 补齐经验吸收与使用入口

| 原内容或经验 | 处理方式 | 当前归属 | 本次吸收要点 |
| --- | --- | --- | --- |
| 原笔记《按数据链路决定改动落点》 | **新增 Skill**，从原先归入的位置独立出来 | [trace-data-change-path](skills/trace-data-change-path/SKILL.md) | 实际接口与调用身份决定字段可达性；派生值核对已有口径、撤销和排序边界；紧急修复优先复用已验证的同语义实现 |
| 原笔记《ER 优先的文档演进方法》 | **归纳到已有 Skill** | [evolve-design-docs](skills/evolve-design-docs/SKILL.md) | 先概念 ER 再逻辑设计；对象生命周期与唯一性；事实归属、决策回写、图文分工和进度与设计分开 |
| 原笔记《从需求讨论收敛到开发基线》中的建模判断 | **归纳到已有 Skill** | [evolve-design-docs](skills/evolve-design-docs/SKILL.md) | 人工停用与上级状态分别保存；历史快照与当前主数据区分；多个修改入口共享冲突基准 |
| 同篇笔记中的需求收口与分阶段实施方法 | **归纳到已有 Skill** | [converge-requirement-docs](skills/converge-requirement-docs/SKILL.md) | 完整状态与局部变更先定口径；直通与审批共用生效逻辑；按模型、规则与冲突处理判断能否进入开发 |
| 整理后经验难以找到、压缩丢失判断依据 | **更新已有 Skill** | [aicoding-skill-curator](skills/aicoding-skill-curator/SKILL.md) | 整合时保留触发场景、依据、反例和边界，并同步描述、总纲索引与路由图 |

`bridge-ai-knowledge-gaps` 原有的数据链路段落改为指向新 Skill；README 能力索引、Mermaid 路由图与 AGENTS 路由均增加“按数据链路决定改动落点”的入口。新增本日志，后续有效更新同步记录内容去向。

## 2026-09-22 · 收敛重复笔记（60c4fd0）

移除 `notes/` 下上述三篇笔记及平行导航，将内容归入已有 Skill。其中数据链路经验当时压缩进 `bridge-ai-knowledge-gaps` 的复用门，但没有匹配的总纲入口，吸收也不充分；本日后续更新已按上表补齐并调整归属。

原文仍可通过 Git 历史恢复；当前内容以本日志链接的 Skill 为准。
