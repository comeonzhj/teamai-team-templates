# 协作公约（全岗位强制）

本规则是财务团队全流程（预算 → 交易与费用审核 → 核算结账 → 税务申报 → 分析报告 → 内控审计）的基本契约。

## 单一事实源（SSOT）

1. 结账与申报的日期与状态只有一份：`docs/context/close-calendar.md` + `current-status.md`。
2. 会计政策、口径、制度变更写 `docs/context/decisions.md`（**会计政策变更是重大事项，必须留痕**）。
3. 核算口径与科目映射的真源是 `docs/context/accounting-standards.md`；指标口径真源是 `glossary.md`。

## 节点纪律

4. **关账日历不可口头改**：任何节点调整走 `decisions.md` 并通知全部依赖方（含外部审计）。
5. 关账期间（close freeze）不改科目、不改口径、不改流程；变更顺延到下个开账期。
6. 任何岗位可从任意环节接手：先读 `current-status.md` 与对应阶段文档（`docs/lifecycle/`），
   不需要别人重新介绍背景；产出物一律套 `docs/templates/` 模板。

## 响应与审批

7. 被 @ 到的角色 4 个工作小时内回应；申报/支付节点临近的事项优先。
8. 超权限事项先审批后执行（审批权限见 `rules/financial-controls.md`）；先斩后奏视为违规。

## 完成的定义（DoD）

9. 「做完」= 产出物交付 + 复核通过（复核人留名）+ 勾稽/对账平衡 + `current-status.md` 已更新
   + 支持性证据归档（可审计线索）。
