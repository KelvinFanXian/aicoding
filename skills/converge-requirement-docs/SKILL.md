---
name: converge-requirement-docs
description: Converge requirement and design documents into a human-readable development baseline after exploratory discussion. Use when documents have accumulated superseded alternatives, stale questions, mixed business and implementation semantics, or repeated revision history; do not use during initial requirement discovery when key business choices are still genuinely open.
---

# Converge Requirement Documents

把发散讨论后的需求与设计文档收成一套当前有效、无矛盾、可进入开发的基线。目标不是保存讨论过程，而是让读者快速理解业务对象、状态、流程、约束和实现边界。

## 先判断能否收口

- 先确认任务给出的事实源及优先级，不自行改变验收依据。
- 区分已确认需求、原始材料、代码现状、实现建议和未验证假设。
- 仍会改变业务行为的分歧保留为最小问题；已有明确答案的问题不得继续标为待确认。
- 代码和平台能力用于判断复用与改造，不能反向冒充业务需求。

## 清理方法

围绕业务对象和动作逐项建立唯一口径，重点检查：

- 同一术语是否同时承担业务状态、流程状态和技术动作；
- 当前规则是否仍夹带已经废弃的方案、方案编号或折中解释；
- 正文、图、表、查询条件、接口说明和版本记录是否表达一致；
- 已定案内容是否仍以问题、建议、待拍板或原型推断出现；
- 需求文档是否混入具体引擎、接口或表结构实现；
- 设计文档是否偏离需求，或者把现有平台限制固化成设计标准。

对每项内容只做四种处理：保留当前结论、按事实改写、移入本地观察记录、删除噪音。正文不保留为了证明讨论过程而存在的旧方案；需要追溯时，只留能解释当前结论的最小决策依据。

## 文档分工

- 需求分析表达业务对象、业务动作、状态变化、权限和验收口径。
- 设计基线表达领域模型、模块职责、数据结构、接口以及与现有系统的融合方式。
- 实现计划表达顺序、依赖、风险和验证，不回写成需求。

优先用 Mermaid 展示对象关系、状态机和主流程。图后只补无法在图中表达的约束，不再用长表或段落完整复述。

## 完成标准

收口后应能够直接回答：

1. 当前确定要实现什么；
2. 每个状态和动作分别属于哪个层次；
3. 哪些复用现有能力，哪些需要改造；
4. 是否还存在会阻断编码的未决问题。

若用户只要求检查，先报告残留及建议，不擅自修改。若用户要求修改，只修改已核实成立的部分，并遵守当前工作区和提交边界。
