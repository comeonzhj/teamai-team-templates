---
name: budget-owner-flow
description: >-
  业务预算责任人自助：编预算、费用自查、差异解释、经营会材料，按财务产出契约组织产出，
  可直接进入财务流程不需要返工。Use when 用户说「编我们部门预算」「这笔费用能报吗」
  「解释一下超支」「准备经营会材料」「做部门的经营分析」。
---

# 预算责任人自助（budget-owner-flow）

Agent 让业务侧能自己产出财务材料。**财务能不能直接收，取决于是否满足财务产出契约**
（`rules/finance-output-contract.md`）与两条红线（`rules/financial-controls.md`、
`rules/accuracy-discipline.md`）。

## 1. 编预算（`budget-analyst` Agent）

- 先列假设：量价、人数与人效、费用率——每条写依据（历史/合同/市场）。
- Agent 按 `docs/templates/budget-template.md` 出三大表关键项与敏感性分析；你确认假设与口径。
- 版本纪律：v1 编制 / v2 评审 / v3 批准；批准后调整走预算调整流程。

## 2. 费用与报销自查

- 按 `docs/templates/expense-audit-checklist.md` 四关自检：真实（单据链）、合规（标准与权限）、
  完整（期间与科目）、权限（审批链）。
- 缺项先补齐再交；不「先入账后补单」。

## 3. 差异解释（禁止编故事）

- 用 `docs/templates/variance-analysis.md`：三比（预算/同期/上期）+ 量价拆解 +
  一次性因素单列；超阈值（±5% 或 ±10 万）必解释。
- 解释要业务事实支撑；不知道就写「待业务确认 + owner + 期限」。

## 4. 经营会材料

- 用 `docs/templates/management-report.md`：结论先行（≤ 3 条）→ 指标（口径 + 三比）→
  驱动因素 → 风险与建议 → 行动项。
- 发布前勾稽自检（`reconciliation-checker` Agent 可帮查）；敏感数据脱敏。

## 5. 交财务前自检（免返工清单，契约第 5 条）

1. 数字三要素齐全；2. 单据链完整；3. 用模板且假设/解释有依据；4. 无明文敏感数据；
5. `current-status.md` 登记。

## 6. 收尾

- 更新 `current-status.md`（事项 + 负责人 + 期限）；口径疑问找 FP&A 并写 `decisions.md`。
- 经验沉淀：`teamai contribute`。

## 边界

- Agent 不付款、不入账、不申报；审批与制单复核由财务按内控执行。
- 涉及会计政策判断（收入确认、资本化、税务处理）：交财务定，业务侧不自行判定。
