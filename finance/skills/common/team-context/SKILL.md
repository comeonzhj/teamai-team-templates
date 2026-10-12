---
name: team-context
description: >-
  财务团队的上下文入口：在预算、费用审核、月结、税务申报、分析报告、内控审计任意环节
  接手工作时，先定位关账日历、会计口径与合规红线再开工。Use when 用户说「现在关账到哪了」
  「接手这个报表/申报」「预算做哪一步了」「这个口径怎么算」。
---

# 团队上下文入口（任意环节接手）

## 第一步：读现状（必做）

1. `context/current-status.md` —— 关账状态、预算周期、申报节点、审计事项（唯一事实源）。
2. `context/close-calendar.md` —— 法定与内部节点（**先看截止日再干活**）。
3. `context/accounting-standards.md` —— 会计政策与科目映射（口径真源）。
4. `context/glossary.md` + `context/finance-policy.md` —— 指标口径、审批权限。
5. `context/decisions.md` —— 会计政策与口径变更记录，不得违背。

## 第二步：先过纪律（任何带数字的任务）

- `rules/accuracy-discipline.md`（强制）：数字带口径/来源/截止时间；先对账后出数；禁静默抹平。
- `rules/financial-controls.md`（强制）：职责分离、审批权限、证据留痕、数据保密；
  银行/ERP 凭据只经 `teamai env exec --`；Agent 不付款、不申报、不改账。
- `guard-pii` hook 会提示银行卡/身份证/薪酬命中——输出一律掩码（****1234）。

## 第三步：定位环节

| 任务 | 环节文档 | 配套模板 |
|---|---|---|
| 预算编制、滚动预测 | `lifecycle/01-budgeting.md` | 预算模板 |
| 费用/报销、应收应付 | `lifecycle/02-transaction-audit.md` | 费用审核清单 |
| 月结、结账 | `lifecycle/03-monthly-close.md` | 月结清单 |
| 税务申报、发票 | `lifecycle/04-tax-filing.md` | 申报清单 |
| 经营报告、差异分析 | `lifecycle/05-reporting-analysis.md` | 经营报告/差异分析 |
| 内控与审计 | `lifecycle/06-internal-control.md` | （内控矩阵见规则） |

（岗位规范：`rules/<role>/`；同岗位成员拿到的规范完全一致。）

## 收尾（必做）

- 更新 `current-status.md`（节点状态 + 复核人）；政策/口径变化写 `decisions.md`。
- 输出的每个数字补三要素：口径、来源、截止时间；无法溯源标「待核对」。
