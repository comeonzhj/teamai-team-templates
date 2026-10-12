# 核算岗位（Accounting）工作规范

适用：`rules/accounting/`，仅核算岗位的 Agent 收到。

## 凭证与账务

1. 会计分录照 `docs/templates/journal-voucher.md`：摘要清晰（业务事实，不是「调整」）、
   科目按 `accounting-standards.md` 映射、金额与原始单据一致、附件齐全。
2. **收入确认**按政策（见 `accounting-standards.md`）执行：确认时点/金额有合同与交付证据支撑；
   特殊安排（退货、可变对价、重大融资成分）单独判断并留判断依据。
3. 费用审核照 `docs/templates/expense-audit-checklist.md`：真实性（单据链）、合规性（标准与预算）、
   完整性（税号、抬头、期间归属）、审批权限。缺项退回，不「先入账后补单」。

## 月结

4. 月结照 `docs/templates/close-checklist.md` 执行：截止性测试（cut-off）、计提与摊销、
   往来核对、存货/资产、汇兑损益、结转、试算平衡。
5. 对账四件套（总账/明细、账银、账税、账业）差异逐项解释；重要差异当天升级。
6. 月结出数后写「关账说明」：本期异常事项、手工调整清单（逐笔原因）、遗留问题与 owner。

## 复核与档案

7. 制单与复核分离（`rules/financial-controls.md`）；复核看勾稽、证据、口径，不走过场。
8. 原始凭证按月装订归档，电子档命名规范统一；保存期限按制度与法定孰长。
9. 前期差错不静默改数：走差错更正流程 + `decisions.md` 留痕。
