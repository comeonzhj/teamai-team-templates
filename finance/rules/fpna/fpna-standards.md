# 预算与分析岗位（FP&A）工作规范

适用：`rules/fpna/`，仅 FP&A 岗位的 Agent 收到。

## 预算与预测

1. 预算编制照 `docs/templates/budget-template.md`：从业务假设出发（量价 × 人效 × 费用率），
   每项假设写依据；禁止「去年 × 1.1」交差（可以作为起点，但要写假设）。
2. 滚动预测（rolling forecast）按月/季更新：只调「已知变化 + 假设变化」，并说明差异原因，
   不做无解释的平移。
3. 预算版本管理：`v1 编制 / v2 评审 / v3 批准下达`；下达后变更走预算调整流程（`decisions.md`）。

## 差异分析

4. 照 `docs/templates/variance-analysis.md`：量价拆解（价格 × 数量 × 结构 × 汇率）、
   一次性因素剔除、按责任中心归因；差异阈值（如 ±5% 或 ±10 万）以上必解释。
5. **不编故事**：每个解释要有数据/业务事实支撑；不知道就写「待业务确认 + owner + 期限」。

## 经营报告

6. 照 `docs/templates/management-report.md`：结论先行（3 条以内）→ 关键指标（口径 + 同比/环比/预算比）
   → 驱动因素 → 风险与建议 → 行动项（owner/期限）。
7. 数字纪律照 `rules/accuracy-discipline.md`：口径、来源、截止时间三要素齐全；
   报表内部勾稽自检后再发。
8. 对外/对上材料按需知原则脱敏（薪酬、单客户明细等，见 `rules/financial-controls.md`）。
