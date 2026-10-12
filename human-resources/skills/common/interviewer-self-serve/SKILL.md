---
name: interviewer-self-serve
description: >-
  用人经理自助跑招聘协作：JD、结构化面试题、面试评价、绩效与发展材料，按涉人产出契约
  产出，可直接进入 HR 流程不需要返工。Use when 用户说「帮我写 JD」「出面试题」
  「写面试评价」「准备绩效评语」「给下属做个发展计划」，或业务侧要直接产出人事材料。
---

# 用人经理自助（interviewer-self-serve）

Agent 让业务侧能直接产出人事材料。**能不能直接进 HR 流程，取决于是否满足涉人产出契约**
（`rules/people-output-contract.md`）与两条红线（`rules/pii-protection.md`、
`rules/fairness-compliance.md`）。

## 1. 写 JD（`jd-writer` Agent）

- 先答三件事：这个岗位 12 个月后做得好是什么样（成功画像）？必备项 ≤ 3？淘汰线？
- Agent 按 `docs/templates/jd-template.md` 产出，你确认职责与要求，HR 确认合规与薪酬带宽。

## 2. 出面试题（`interview-question-designer` Agent）

- 给它岗位维度与权重（同一岗位所有人同一套维度锚点）；它产出 STAR 行为题 + 追问链 + 评分锚点。
- 合规自查由它做，你再过一眼禁区（婚育/民族/宗教/政治/健康）。

## 3. 面试评价（24 小时内交）

- 按 `docs/templates/interview-scorecard.md`：每维度给分 + **行为证据**（原话/数据），
  再给结论（强烈推荐/推荐/保留/不推荐）。
- 「感觉不错」不算证据；写不出证据的维度不打分。

## 4. 绩效与发展材料（`performance-coach` / `talent-analyst` Agent）

- 绩效：期初目标 → 期中 SBI 记录 → 评定逐条举证 → 校准会 → 反馈面谈（SBI）。
- 发展：IDP 目标 ≤ 2 个、行动 70-20-10、导师与季度检查点（`docs/templates/idp.md`）。
- Agent 出草稿与证据整理，等级与晋升结论由人（经理 + 校准会）定。

## 5. 交 HR 前自检（免返工清单，契约第 4 条）

1. 用模板、结构完整；2. 结论有行为证据；3. 无红线命中、无明文 PII（`privacy-reviewer` 自检）；
4. 未决问题有 owner/期限；5. `current-status.md` 登记（代号 + 状态）。

## 6. 收尾

- 更新 `current-status.md`（用代号，不写 PII）；口径/流程疑问交 HRBP 并写 `decisions.md`。
- 面试与绩效经验沉淀：`teamai contribute`（脱敏后）。

## 边界

- 录用/淘汰/绩效等级/晋升结论永远由人签字；Agent 输出不得直接作为决定依据。
- 任何疑似隐私或歧视风险：停下问 HR（@hr-lead），不自行处理。
