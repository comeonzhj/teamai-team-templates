---
name: team-context
description: >-
  产研设协作团队的上下文入口：在任意阶段接手工作时，先按本 skill 定位项目现状、
  岗位职责与阶段产出规范，再开工。Use when 用户说「继续做需求/设计/开发/测试/上线」、
  「现在做到哪了」、「接手这个项目/模块」，或任何需要先了解团队与项目背景的任务。
---

# 团队上下文入口（任意阶段接手）

目标：任何成员的 Agent 在**不重新介绍背景**的前提下，5 分钟内从任意阶段开工。

## 第一步：读现状（必做，先于一切动作）

按顺序读（路径以 `teamai pull` 交付的 `docs/` 镜像为准，项目作用域在 `<项目>/.teamai/docs/`，用户作用域在 `~/.teamai/docs/`）：

1. `context/current-status.md` —— 单一事实源：当前阶段、进行中事项、阻塞、下一步。
2. `context/product-overview.md` —— 产品定位、目标用户、核心指标（只在做新产品/新模块时细读）。
3. `context/decisions.md` —— 检索与本次任务相关的既有决策，**不得违背**；如需推翻，先新增决策记录。

## 第二步：定位自己

- 用户提到岗位（产品/PM、设计、研发、测试/QA），就加载该岗位的 skill 与 rules（同岗位规范统一，见 `rules/<role>/`）。
- 未提岗位时问一句：「这次按哪个岗位的规范执行？」——只问这一句。

## 第三步：定位阶段

`lifecycle/` 下每个阶段文档自含「进入条件 / 关键动作 / 产出物 / DoD / 交接」：

| 用户的任务 | 阶段文档 |
|---|---|
| 需求调研、机会评估 | `lifecycle/01-discovery.md` |
| 写 PRD、需求评审 | `lifecycle/02-definition.md` |
| 交互/视觉设计 | `lifecycle/03-design.md` |
| 技术方案、编码、CR | `lifecycle/04-development.md` |
| 测试、缺陷、回归 | `lifecycle/05-testing.md` |
| 发布、灰度、验证 | `lifecycle/06-release.md` |
| 复盘、沉淀 | `lifecycle/07-retro.md` |

产出物一律套用 `templates/` 下对应模板，不要自创结构。

## 收尾（必做）

任务结束前：更新 `context/current-status.md`（状态、进度、阻塞），有新决策写 `context/decisions.md`。这是协作公约第 10 条的 DoD 之一。
