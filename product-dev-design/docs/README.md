# 团队文档索引（docs/）

本目录是**全队共享的流程与上下文**，`teamai pull` 自动镜像到每个成员的每个 AI 工具（项目作用域：`<项目>/.teamai/docs/`）。任何岗位的成员 Agent 都能读到同一份。

## 先读什么

| 我想… | 读 |
|---|---|
| 快速接手、知道从哪开工 | [`onboarding.md`](onboarding.md) |
| 知道项目现在做到哪了 | [`context/current-status.md`](context/current-status.md)（唯一事实源） |
| 了解产品定位与目标 | [`context/product-overview.md`](context/product-overview.md) |
| 查一个决策为什么这么做 | [`context/decisions.md`](context/decisions.md) |
| 查术语口径 | [`context/glossary.md`](context/glossary.md) |

## 全队产出契约（任何岗位产出都适用）

| 契约 | 管什么 | 免重构自检用什么 |
|---|---|---|
| `rules/design-contract.md` | UI/交互/视觉产出的准线（含 PM 做的 Demo） | `design-reviewer` |
| `rules/engineering-contract.md` | 任何代码产出的准线（含 PM/设计写的代码） | `code-reviewer` + lint/测试 |
| `rules/quality-contract.md` | 产出进入协作的共同门槛（免重构清单） | `test-plan-reviewer` + 清单 |

> 想直接动手开发（Demo / 已有项目迭代）：用 `demo-to-prod` skill，按三份契约产出、自检、
> 交接或灰度，不需要重构即可进协作。

## 全流程（任何阶段可开工）

| 阶段 | 文档 | 主责岗位 |
|---|---|---|
| 1 需求发现与分析 | [`lifecycle/01-discovery.md`](lifecycle/01-discovery.md) | PM |
| 2 需求定义与评审 | [`lifecycle/02-definition.md`](lifecycle/02-definition.md) | PM |
| 3 交互与视觉设计 | [`lifecycle/03-design.md`](lifecycle/03-design.md) | Design |
| 4 技术方案与开发 | [`lifecycle/04-development.md`](lifecycle/04-development.md) | Dev |
| 5 测试与质量 | [`lifecycle/05-testing.md`](lifecycle/05-testing.md) | QA |
| 6 发布上线与验证 | [`lifecycle/06-release.md`](lifecycle/06-release.md) | Dev + PM + QA |
| 7 复盘与沉淀 | [`lifecycle/07-retro.md`](lifecycle/07-retro.md) | 全员 |

## 模板（产出物一律套用，不自创结构）

[`templates/`](templates/)：需求卡片 · PRD · 设计简报 · 技术方案 · 测试方案 · 发布检查单 · 复盘模板 · 配置审阅单（新团队先用 `team-setup` skill 生成）

## 维护约定

- 状态与进展写 `context/current-status.md`，决策写 `context/decisions.md`（规则见 `rules/context-hygiene.md`）。
- 流程本身要改：改对应阶段文档 + 在 `decisions.md` 留痕，不要在群里口头改流程。
- 阶段文档里的产出物模板有变更，同步改 `templates/` 并更新本索引。
