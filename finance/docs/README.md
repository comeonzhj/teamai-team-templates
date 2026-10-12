# 团队文档索引（docs/）

全队共享的流程与上下文，`teamai pull` 自动镜像到每个成员的每个 AI 工具（`<项目>/.teamai/docs/`）。

> ⚠️ 本目录**不存放明文银行账号、薪酬明细、未公开财务数据**（见 `rules/financial-controls.md`，强制）。

## 先读什么

| 我想… | 读 |
|---|---|
| 快速接手 | [`onboarding.md`](onboarding.md) |
| 看关账/预算/申报/审计现状 | [`context/current-status.md`](context/current-status.md)（唯一事实源） |
| 查节点截止日 | [`context/close-calendar.md`](context/close-calendar.md) |
| 查会计政策与科目 | [`context/accounting-standards.md`](context/accounting-standards.md) |
| 查审批权限与制度 | [`context/finance-policy.md`](context/finance-policy.md) |
| 查指标口径 | [`context/glossary.md`](context/glossary.md) |
| 查政策/口径变更 | [`context/decisions.md`](context/decisions.md) |

## 全流程（任意环节可开工）

| 环节 | 文档 | 主责 |
|---|---|---|
| 1 预算与滚动预测 | [`lifecycle/01-budgeting.md`](lifecycle/01-budgeting.md) | fpna |
| 2 交易与费用审核 | [`lifecycle/02-transaction-audit.md`](lifecycle/02-transaction-audit.md) | accounting |
| 3 核算与月结 | [`lifecycle/03-monthly-close.md`](lifecycle/03-monthly-close.md) | accounting |
| 4 税务申报 | [`lifecycle/04-tax-filing.md`](lifecycle/04-tax-filing.md) | tax |
| 5 分析与经营报告 | [`lifecycle/05-reporting-analysis.md`](lifecycle/05-reporting-analysis.md) | fpna |
| 6 内控与审计 | [`lifecycle/06-internal-control.md`](lifecycle/06-internal-control.md) | treasury |

## 模板（产出物一律套用）

[`templates/`](templates/)：预算 · 费用审核清单 · 记账凭证 · 月结清单 · 申报清单 · 经营报告 · 差异分析 · 配置审阅单（新团队先用 `team-setup` skill 生成）

## 维护约定

- 状态写 `context/current-status.md`，会计政策与口径变更写 `context/decisions.md`（重大事项）。
- 强制规则：`rules/financial-controls.md`（内控与保密）、`rules/accuracy-discipline.md`（数字准确性）。
- **关账冻结期**（close freeze）不改科目、口径与流程；变更顺延到下个开账期。
