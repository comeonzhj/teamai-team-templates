# 质量与验收契约（Quality Contract）—— 产出进入协作的共同门槛

**适用范围：全团队（强制准线）。** 需求、设计、代码、Demo、测试报告——任何进入协作的
产出物。核心：**可验证、可追溯、可交接**。

## 1. 验收标准（AC）先行

1. 动手前写 AC（Given/When/Then 或可测陈述）；不可测的不叫 AC（「体验流畅」「性能达标」无效）。
2. Demo 同样要有 AC：至少覆盖主流程成功路径 + 1 个异常路径 + 数据口径说明。

## 2. 完成的定义（DoD）

产出物交付 + 自检通过 + 评审通过 + `current-status.md` 已更新 + 交接包完整（见 `stage-handoff`）。

## 3. 免重构进协作清单（Demo / 迭代通用）

1. [ ] AC 全绿，附自测记录（跑了什么、结果如何）
2. [ ] UI 产出过 `design-contract.md` 自检（`design-reviewer`）
3. [ ] 代码产出过 `engineering-contract.md` 自检（`code-reviewer` + lint/测试全绿）
4. [ ] 测试视角过一遍（`test-plan-reviewer`）：核心链路正向/反向/边界有覆盖
5. [ ] 交接包完整：00-summary + 产出物 + open-questions + checklist
6. [ ] `current-status.md` 与相关决策已更新

**清单 1-6 全过 = 可直接进协作（或进灰度）；任一未过 = 返工点写明，不带病交接。**

## 4. 缺陷分级

`P0 阻塞 / P1 严重 / P2 一般 / P3 轻微`（依据：影响面 × 频率 × 有无绕行）。
P0/P1 未清不得进入下一阶段。

## 5. 谁来把关

自检（产出方，含其 Agent）→ 交叉评审（对应评审 Agent）→ 人工确认（岗位负责人）。
Agent 的结论是证据，签字是人的动作。
