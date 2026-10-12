# 团队文档索引（docs/）

全队共享的流程与上下文，`teamai pull` 自动镜像到每个成员的每个 AI 工具（`<项目>/.teamai/docs/`）。

> ⚠️ 本目录**不存放明文 PII 与薪酬**（见 `rules/pii-protection.md`，强制）。

## 先读什么

| 我想… | 读 |
|---|---|
| 快速接手 | [`onboarding.md`](onboarding.md) |
| 看招聘漏斗/绩效周期/培养计划 | [`context/current-status.md`](context/current-status.md)（唯一事实源） |
| 了解组织与人才现状（聚合口径） | [`context/org-context.md`](context/org-context.md) |
| 查用人标准 | [`context/hiring-principles.md`](context/hiring-principles.md) |
| 查职级与胜任力 | [`context/competency-model.md`](context/competency-model.md) |
| 查绩效框架 | [`context/performance-framework.md`](context/performance-framework.md) |
| 查指标口径 | [`context/glossary.md`](context/glossary.md) |

## 全流程（任意环节可开工）

| 环节 | 文档 | 主责 |
|---|---|---|
| 1 人力需求与岗位规划 | [`lifecycle/01-workforce-planning.md`](lifecycle/01-workforce-planning.md) | hrbp + recruiter |
| 2 JD 与雇主品牌 | [`lifecycle/02-jd.md`](lifecycle/02-jd.md) | recruiter |
| 3 渠道与简历筛选 | [`lifecycle/03-sourcing-screening.md`](lifecycle/03-sourcing-screening.md) | recruiter |
| 4 面试与评估 | [`lifecycle/04-interview.md`](lifecycle/04-interview.md) | recruiter + 面试官 |
| 5 Offer 与入职 | [`lifecycle/05-offer-onboarding.md`](lifecycle/05-offer-onboarding.md) | recruiter + hr-ops |
| 6 绩效评定 | [`lifecycle/06-performance.md`](lifecycle/06-performance.md) | hrbp |
| 7 人才培养与继任 | [`lifecycle/07-talent-development.md`](lifecycle/07-talent-development.md) | td |

## 模板（产出物一律套用）

[`templates/`](templates/)：招聘需求单 · JD · 筛选评分卡 · 面试评分卡 · 绩效评定表 · IDP · 招聘复盘

## 维护约定

- 状态写 `context/current-status.md`（聚合 + 代号），口径与流程变更写 `context/decisions.md`。
- 强制规则：`rules/pii-protection.md`（隐私）、`rules/fairness-compliance.md`（公平就业）。
- 标准修订（评分锚点、职级要求）走 `decisions.md` 留痕并给过渡期。
