---
name: team-context
description: >-
  人力资源团队的上下文入口：在招聘需求、JD、筛选、面试、Offer/入职、绩效、人才培养任意
  环节接手工作时，先定位组织现状、岗位标准与合规红线再开工。Use when 用户说「继续跟进这个
  岗位/候选人」「现在招聘漏斗怎么样」「接手绩效工作」「这个岗位的标准是什么」。
---

# 团队上下文入口（任意环节接手）

## 第一步：读现状（必做）

1. `context/current-status.md` —— 招聘漏斗、绩效周期、培养计划（唯一事实源）。
2. `context/hiring-principles.md` + `context/competency-model.md` —— 用人标准与职级口径。
3. `context/performance-framework.md` —— 绩效框架（绩效/培养类任务必读）。
4. `context/decisions.md` —— 既有口径与流程决策，不得违背。

## 第二步：先过红线（任何涉及人的数据的任务）

- `rules/pii-protection.md`（强制）：脱敏、最小必要、留存删除、传播边界。
- `rules/fairness-compliance.md`（强制）：提问禁区、结构化评估、评定可复核。
- **禁止**要求用户粘贴身份证/手机号/薪酬等 PII；让数据留在 ATS/HRIS（`teamai env exec --` 读取）。
- **禁止**由 Agent 直接做录用/淘汰决定：只做材料整理、评分辅助、一致性检查，结论由人拍板。

## 第三步：定位环节

| 任务 | 环节文档 | 配套模板 |
|---|---|---|
| HC 需求、岗位规划 | `lifecycle/01-workforce-planning.md` | 招聘需求单 |
| 写 JD、上架 | `lifecycle/02-jd.md` | JD 模板 |
| 渠道、简历筛选 | `lifecycle/03-sourcing-screening.md` | 筛选评分卡 |
| 面试与评估 | `lifecycle/04-interview.md` | 面试评分卡 |
| Offer 与入职 | `lifecycle/05-offer-onboarding.md` | Offer 检查单 |
| 绩效评定 | `lifecycle/06-performance.md` | 绩效评定表 |
| 人才培养 | `lifecycle/07-talent-development.md` | IDP |

（岗位规范：`rules/<role>/`；同岗位成员拿到的规范完全一致。）

## 收尾（必做）

- 更新 `current-status.md`（用聚合与代号，不写明文 PII）；口径变化写 `decisions.md`。
- 敏感输出用虚构示例（张三/138****1234/【示例】）。
