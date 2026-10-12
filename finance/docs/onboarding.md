# 新成员（与新 Agent）上手指南

> 目标：**只需要知道自己的职责，就能从任意环节立刻开工。**
> ⚠️ 上岗第一件事：读 `rules/financial-controls.md` 与 `rules/accuracy-discipline.md`（强制）。

## 1. 认领角色（3 分钟）

```bash
teamai pull
teamai roles set accounting    # accounting | fpna | tax | treasury，可逗号选多个
teamai pull
```

| 你会自动获得 | 位置 | 作用 |
|---|---|---|
| 岗位规范 | `rules/<role>/` | 核算/预算/税务/资金标准 |
| 岗位技能 | `skills/<role>/` | 分步 SOP |
| 岗位 Agent | `agents/<role>/` | 凭证审核、差异分析、税务提示、现金流预测 |
| 全员契约 | `rules/`（根目录） | 协作公约、内控红线、数字准确性纪律 |

## 2. 读四份文档（5 分钟）

1. [`context/current-status.md`](context/current-status.md) —— 关账/预算/申报/审计现状。
2. [`context/close-calendar.md`](context/close-calendar.md) —— 截止日（先看节点再干活）。
3. [`rules/accuracy-discipline.md`](../rules/accuracy-discipline.md) —— 数字纪律（强制）。
4. 你环节对应的阶段文档（下表）。

## 3. 从任意环节开工

| 你的职责 | 从这里开始 | 配套模板 |
|---|---|---|
| 预算/预测 | [`lifecycle/01-budgeting.md`](lifecycle/01-budgeting.md) | 预算模板 |
| 费用/往来 | [`lifecycle/02-transaction-audit.md`](lifecycle/02-transaction-audit.md) | 费用审核清单 |
| 月结 | [`lifecycle/03-monthly-close.md`](lifecycle/03-monthly-close.md) | 月结清单 |
| 申报 | [`lifecycle/04-tax-filing.md`](lifecycle/04-tax-filing.md) | 申报清单 |
| 报告 | [`lifecycle/05-reporting-analysis.md`](lifecycle/05-reporting-analysis.md) | 经营报告 |
| 内控/审计 | [`lifecycle/06-internal-control.md`](lifecycle/06-internal-control.md) | — |

## 4. 与 AI 协作的三条铁律

1. **Agent 不碰资金与申报**：不付款、不提交申报、不改账；制单 + 复核双人负责制照旧。
2. **数字三要素**：每个数字带口径、来源、截止时间；无法溯源标「待核对」，不进报表。
3. **收尾必更新**：「更新 current-status」（含复核人）；政策/口径变化写 decisions。

## 5. 常用命令

```bash
teamai pull              # 拉取团队最新资源
teamai recall <关键词>   # 搜团队沉淀的经验（如往年汇算口径）
teamai contribute        # 沉淀本次经验（先脱敏）
teamai env exec -- <cmd> # 带团队变量/机密跑命令（ERP/银行只读查询）
teamai doctor            # 诊断
```
