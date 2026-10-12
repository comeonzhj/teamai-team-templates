# 团队文档索引（docs/）

全队共享的流程与上下文，`teamai pull` 自动镜像到每个成员的每个 AI 工具（`<项目>/.teamai/docs/`）。

## 先读什么

| 我想… | 读 |
|---|---|
| 快速接手、知道从哪开工 | [`onboarding.md`](onboarding.md) |
| 看在产内容与排期 | [`context/current-status.md`](context/current-status.md)（唯一事实源） |
| 写东西前查语调 | [`context/brand-voice.md`](context/brand-voice.md) |
| 了解受众与内容策略 | [`context/audience-personas.md`](context/audience-personas.md) · [`context/content-strategy.md`](context/content-strategy.md) |
| 查指标口径 | [`context/glossary.md`](context/glossary.md) |
| 查一个决策为什么这么做 | [`context/decisions.md`](context/decisions.md) |

## 内容全流程（任意环节可开工）

| 环节 | 文档 | 主责 |
|---|---|---|
| 1 选题策划 | [`lifecycle/01-topic-selection.md`](lifecycle/01-topic-selection.md) | strategy |
| 2 资料搜集与事实核查 | [`lifecycle/02-research.md`](lifecycle/02-research.md) | writer |
| 3 内容创作 | [`lifecycle/03-content-creation.md`](lifecycle/03-content-creation.md) | writer |
| 4 编辑审校与合规 | [`lifecycle/04-editorial-review.md`](lifecycle/04-editorial-review.md) | editor |
| 5 发布与分发 | [`lifecycle/05-distribution.md`](lifecycle/05-distribution.md) | ops |
| 6 数据与运营复盘 | [`lifecycle/06-performance-review.md`](lifecycle/06-performance-review.md) | ops + strategy |

## 模板（产出物一律套用）

[`templates/`](templates/)：选题卡 · 资料简报 · 内容提纲 · 审校清单 · 分发计划 · 复盘报告 · 配置审阅单（新团队先用 `team-setup` skill 生成）

## 维护约定

- 状态与数据写 `context/current-status.md`，决策与口径写 `context/decisions.md`（规则见 `rules/context-hygiene.md`）。
- 合规红线在 `rules/content-safety.md`（强制），任何内容不得绕过。
- 流程变更：改对应阶段文档 + `decisions.md` 留痕。
