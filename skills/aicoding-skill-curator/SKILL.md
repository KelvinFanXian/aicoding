---
name: aicoding-skill-curator
description: Detect reusable, validated AI-coding methods emerging from ongoing work in this repository and ask whether to distill them into a new or existing skill. Use when repeated corrections, stable decision procedures, prompt patterns, or cross-project disciplines have clearly formed; do not use for one-off project facts or tentative ideas.
---

# Aicoding Skill Curator

识别工作中已经成形的 Skill 机会。未获维护授权时只提醒；用户已明确要求提炼、更新经验库时，直接在授权范围内完成，不重复询问。

## 判断是否值得提醒

出现以下特征时，才视为候选机会：

- 能改变后续 AI 的工作方式，而不只是补充某个领域知识；
- 已经过实际使用、纠错或对比，形成相对稳定的判断方法；
- 可以说清触发条件、期望行为和失效边界；
- 脱离当前项目后仍可复用，或者明显属于已有 Skill 的缺失规则；
- 不记录下来，后续较可能重复犯错或重复讨论。

不要为一次性项目事实、尚未验证的猜想、通用常识、单句偏好或仅适合写成普通经验文章的内容发出提醒。

## 提醒方式

1. 先完成或推进当前任务，不因 Skill 建议打断用户正在做的决策。
2. 在自然收口点提出一次简短询问，说明候选方法及其复用价值。
3. 同一知识单元只提醒一次；多个相近候选合并提示，避免连续询问。
4. 只询问是否沉淀，不在用户同意前创建或修改任何 Skill。

推荐句式：

> 这里已经形成了一个可复用的「……」方法，适合新增或补充到 Skill，避免以后再次……。要不要现在沉淀？

## 用户同意后

- 使用 `skill-creator` 完成创建或更新；先检查已有 Skill，能合并则不重复新增。
- 从事实中提炼行为规则，不照搬当前对话和具体解决方案。
- 面向有能力的模型，只补它容易遗漏的判断依据、反例或验证办法；“认真分析、充分测试”等常识不扩写成条款。能用一条条件化原则解释多个缺陷，就不逐缺陷立规矩。
- 判断一项经验的价值：它会让模型在什么场景作出不同决定？用来源中的反例检验这点；文档记载的实测与本轮亲自复现分开表述，未经核验的归因不升级为规则。
- 明确适用条件、反例和停止条件，避免把局部经验绝对化。
- 遵守仓库公开边界：项目证据只留在 `.local/`，Skill 中不得出现可识别项目的信息。
- 创建后验证 Skill 的结构，并说明它将在什么情况下触发。

如果用户拒绝或暂不处理，继续当前工作，不反复提醒。
