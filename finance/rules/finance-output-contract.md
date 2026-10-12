# 财务产出契约（Finance Output Contract）—— 业务侧产出财务材料的准入基线

**适用范围：全团队（准线）。** 业务负责人、预算责任人、项目负责人用 Agent 直接产出
预算申报、费用说明、差异解释、经营会材料时都适用。
目标：**产出可直接进入财务流程（受理/入账/汇报），不需要返工**。

> 硬红线见 `rules/financial-controls.md` 与 `rules/accuracy-discipline.md`（强制）；
> 本契约是「财务能不能直接收」的门槛。

## 1. 数字三要素（缺一不受理）

每个数字带：**口径**（怎么算的）、**来源**（哪个系统/哪张表/哪份合同）、**截止时间**（as of）。
口径以 `docs/context/glossary.md` 为准；估算值标注「估算 + 方法 + 误差范围」。

## 2. 单据与证据链（费用/付款类）

- 真实性：合同/订单 + 发票 + 验收/行程 + 审批链齐全；
- 合规性：符合 `docs/context/finance-policy.md` 的标准与权限（超标有事前审批）；
- 归属：期间与科目正确（对照 `docs/context/accounting-standards.md`）。

## 3. 预算与差异材料

- 预算：用 `docs/templates/budget-template.md`，假设写依据（禁止「去年 × 1.1」无假设申报）。
- 差异解释：用 `docs/templates/variance-analysis.md`，量价拆解 + 一次性因素单列；
  不知道原因就写「待业务确认 + owner + 期限」，**禁止编故事**。

## 4. 保密与脱敏

- 银行账号掩码（\*\*\*\*1234）；薪酬、单客户/单供应商明细按汇总口径；未公开财务数据不外传。

## 5. 免返工清单（交财务前自检）

1. [ ] 数字三要素齐全，口径与 glossary 一致
2. [ ] 单据链/证据链完整（费用付款类）
3. [ ] 预算/差异用模板，假设与解释有依据
4. [ ] 无明文敏感数据（`reconciliation-checker` / 守卫自检）
5. [ ] `current-status.md` 已登记（事项 + 负责人 + 期限）

## 6. 谁来把关

自检（产出方，含其 Agent）→ 财务岗位复核（accounting / fpna / tax / treasury）→
制单 + 复核双人负责照旧。Agent 的结论是材料，入账与审批是人的动作。
