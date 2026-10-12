# 涉人产出契约（People Output Contract）—— 业务侧产出人事材料的准入基线

**适用范围：全团队（准线）。** 用人经理、业务负责人、导师用 Agent 直接产出 JD、面试题、
面试评价、绩效评语、培养计划、Offer 沟通材料时都适用。
目标：**产出可直接进入 HR 流程，不需要返工，且经得起复核**。

> 硬红线见 `rules/pii-protection.md` 与 `rules/fairness-compliance.md`（强制）；
> 本契约是「能不能直接用」的门槛。

## 1. 结构化（用模板，不即兴）

| 产出 | 用什么模板 | 配套 |
|---|---|---|
| JD | `docs/templates/jd-template.md` | `jd-writer` Agent |
| 面试题本 | `docs/templates/interview-scorecard.md` 的维度与锚点 | `interview-question-designer` |
| 面试评价 | `docs/templates/interview-scorecard.md` | 每维度写 STAR 行为证据 |
| 绩效材料 | `docs/templates/performance-review.md` | `performance-coach` |
| 培养计划 | `docs/templates/idp.md` | `talent-analyst` |

## 2. 证据化（写不出证据就不给结论）

- 评价与判定必须指向可观察的行为/产出（STAR）；「感觉不错」「不太行」无效。
- 负面结论必须可复核：标准 + 证据 + 沟通记录。

## 3. 合规与脱敏（红线优先级最高）

- 提问与表述不触红线（婚育/民族/宗教/政治/健康等禁区）；JD 无年龄/性别/婚育/户籍限制。
- 涉个人信息一律脱敏（138\*\*\*\*1234、代号 C-0142）；薪酬与绩效结果按需知传播。
- **Agent 只辅助，不做录用/淘汰/绩效结论**；结论由人签字。

## 4. 免返工清单（交 HR 前自检）

1. [ ] 用了对应模板，结构完整
2. [ ] 每条结论有行为证据，可被第三人复核
3. [ ] 无红线命中、无明文 PII（`privacy-reviewer` 自检过）
4. [ ] 未决问题有 owner 与期限
5. [ ] `current-status.md` 已登记（代号 + 状态）

## 5. 谁来把关

自检（产出方，含其 Agent）→ HR 岗位复核（recruiter / hrbp / td）→ 按流程签字留痕。
