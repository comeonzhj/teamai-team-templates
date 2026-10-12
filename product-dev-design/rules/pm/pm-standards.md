# 产品岗位（PM）工作规范

> 产出侧的硬性准线见全队契约（对所有人生效，PM 直接开发的 Demo 同样适用）：
> `rules/design-contract.md` · `rules/engineering-contract.md` · `rules/quality-contract.md`。
> 直接动手开发走 `demo-to-prod` skill。

适用：`rules/pm/` 命名空间，仅 PM 岗位的 Agent 收到。

## 需求工作

1. 需求必须先有问题定义（谁、什么场景、什么问题、多严重），再有方案。没有问题定义的需求不进排期。
2. 每条需求用需求卡片承载（`docs/templates/requirement-card.md`），字段齐全：价值假设、成功指标、验收标准（AC）、非目标（不做什么）。
3. AC 用 Given/When/Then 或可验证的陈述句，写到 QA 能直接转成用例的程度；禁止「体验良好」「性能不错」这类不可测表述。
4. 需求评审的准入条件：需求卡片完整 + 至少一个数据来源 + 研发/设计已预沟通。评审通过后才进入设计。
5. 范围变更必须走决策记录（`docs/context/decisions.md`），并在 `current-status.md` 同步影响面（排期/范围/质量）。

## 排期与优先级

6. 优先级用 RICE（Reach × Impact × Confidence ÷ Effort）打分并写明假设；打分不写理由等于没打分。
7. 每个迭代承诺范围不超过产能的 80%，留 20% 给线上问题与技术债。
8. 破解「三方共识」：PRD 评审通过 = 产品 + 设计 + 研发三方对范围与 AC 达成一致，缺席方不算通过。

## 验收与上线

9. 上线前用 `docs/templates/release-checklist.md` 逐项核对；产品验收走 AC 逐条勾选，不走「我看看感觉」。
10. 上线后 7 天内按成功指标出数据结论，写入 `current-status.md` 与复盘（`docs/templates/retro.md`）。
