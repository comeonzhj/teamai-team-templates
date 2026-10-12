# 新成员（与新 Agent）上手指南

> 目标：**只需要知道自己的职责，就能从选题、资料、创作、审校、分发、复盘任意环节立刻开工。**

## 1. 认领角色（3 分钟）

```bash
teamai pull
teamai roles set writer    # strategy | writer | editor | ops，可逗号选多个
teamai pull
```

| 你会自动获得 | 位置 | 作用 |
|---|---|---|
| 岗位规范 | `rules/<role>/` | 常驻红线与标准 |
| 岗位技能 | `skills/<role>/` | 分步 SOP |
| 岗位 Agent | `agents/<role>/` | 选题/内容/审校/数据分析 |
| 全员契约 | `rules/`（根目录） | 协作公约、内容安全红线、上下文维护 |

## 2. 读四份文档（5 分钟）

1. [`context/current-status.md`](context/current-status.md) —— 内容日历与在产稿件。
2. [`context/brand-voice.md`](context/brand-voice.md) —— 品牌语调（写任何文字前必读）。
3. [`rules/content-safety.md`](../rules/content-safety.md) —— 合规红线（强制）。
4. 你环节对应的阶段文档（下表）。

## 3. 从任意环节开工

| 你的职责 | 从这里开始 | 配套模板 |
|---|---|---|
| 选题、排期 | [`lifecycle/01-topic-selection.md`](lifecycle/01-topic-selection.md) | 选题卡 |
| 资料、调研 | [`lifecycle/02-research.md`](lifecycle/02-research.md) | 资料简报 |
| 提纲、成稿 | [`lifecycle/03-content-creation.md`](lifecycle/03-content-creation.md) | 提纲 |
| 审校、放行 | [`lifecycle/04-editorial-review.md`](lifecycle/04-editorial-review.md) | 审校清单 |
| 发布、分发 | [`lifecycle/05-distribution.md`](lifecycle/05-distribution.md) | 分发计划 |
| 数据、复盘 | [`lifecycle/06-performance-review.md`](lifecycle/06-performance-review.md) | 复盘报告 |

## 4. 与 AI 协作的三条约定

1. 会话开始时 Agent 自动收到上下文指引；也可以说「用 team-context skill 接手当前工作」。
2. 产出物用模板：「按模板出 <选题卡/资料简报/复盘报告>」。
3. 收尾必更新：「更新 current-status」；数字一定带口径与来源。

## 5. 常用命令

```bash
teamai pull              # 拉取团队最新资源
teamai recall <关键词>   # 搜团队沉淀过的爆款/翻车经验
teamai contribute        # 沉淀本次经验（先脱敏）
teamai env exec -- <cmd> # 带团队变量/机密跑命令（如发布脚本）
teamai doctor            # 诊断
```
