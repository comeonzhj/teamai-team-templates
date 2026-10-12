---
name: team-context
description: >-
  内容营销团队的上下文入口：在选题、资料、创作、审校、分发、复盘任意环节接手工作时，
  先按本 skill 定位内容日历、品牌语调与岗位规范，再开工。Use when 用户说「继续写这篇」
  「现在有哪些在产内容」「接手这个账号/栏目」「今天做什么选题」，或任何需要先了解团队背景的任务。
---

# 团队上下文入口（任意环节接手）

目标：任何成员的 Agent **不需要重新介绍背景**，5 分钟内从任意环节开工。

## 第一步：读现状（必做）

1. `context/current-status.md` —— 内容日历/选题看板（唯一事实源）：在产稿件、状态、负责人、排期。
2. `context/brand-voice.md` —— 品牌语调与写作规范（任何文字产出的前置约束）。
3. `context/audience-personas.md` + `context/content-strategy.md` —— 受众画像与内容策略（新选题/新栏目时细读）。
4. `context/decisions.md` —— 检索相关既有决策（渠道口径、栏目定位、指标定义），不得违背。

（路径：项目作用域 `<项目>/.teamai/docs/`，用户作用域 `~/.teamai/docs/`。）

## 第二步：定位岗位

用户提到策划/选题、撰稿、编辑/审校、运营，就加载对应岗位的 skill 与 rules（同岗位规范统一）。
未提岗位只问一句：「这次按哪个岗位的规范执行？」

## 第三步：定位环节

| 任务 | 环节文档 | 配套模板 |
|---|---|---|
| 选题、选题评估、内容日历 | `lifecycle/01-topic-selection.md` | 选题卡 |
| 资料搜集、事实核查 | `lifecycle/02-research.md` | 资料简报 |
| 提纲、成稿 | `lifecycle/03-content-creation.md` | 提纲 / 成稿规范 |
| 审校、合规放行 | `lifecycle/04-editorial-review.md` | 审校清单 |
| 发布、分发 | `lifecycle/05-distribution.md` | 分发计划 |
| 数据、复盘 | `lifecycle/06-performance-review.md` | 复盘报告 |

## 收尾（必做）

- 更新 `current-status.md`（状态流转 + 数据回填）；新决策写 `decisions.md`。
- 数字带口径与来源；合规问题按 `rules/content-safety.md` 处理，拿不准就标「待合规确认」。
- 爆款/翻车经验用 `teamai contribute` 沉淀（先脱敏）。
