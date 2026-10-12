# 新成员（与新 Agent）上手指南

> 目标：**只需要知道自己的职责，就可以从任意阶段立刻开工，不需要任何人重新介绍背景。**

## 1. 认领你的角色（3 分钟）

```bash
teamai pull            # 同步团队 skills / rules / agents / docs
teamai roles set pm    # pm | design | dev | qa，可逗号选多个
teamai pull            # 按岗位下发对应规范
```

每个岗位的 Agent 会自动获得：

| 内容 | 位置 | 作用 |
|---|---|---|
| 岗位规范（rules） | `rules/<role>/` | 始终生效的红线与标准 |
| 岗位技能（skills） | `skills/<role>/` | 具体工作流 SOP |
| 岗位评审 Agent | `agents/<role>/` | PRD / 设计 / 代码 / 测试方案评审 |
| 全员协作公约 | `rules/`（根目录） | 协作契约、上下文维护、AI 使用红线 |

## 2. 读三份文档（5 分钟）

1. [`context/current-status.md`](context/current-status.md) —— 项目现在做到哪了、谁在做什么、有什么阻塞。
2. [`docs/README.md`](README.md) —— 文档导航。
3. 你岗位对应的阶段文档（见下表）。

## 3. 从任意阶段开工

| 你的职责 | 从这里开始 | 配套模板 |
|---|---|---|
| 需求调研 / 写 PRD | [`lifecycle/01-discovery.md`](lifecycle/01-discovery.md) → [`lifecycle/02-definition.md`](lifecycle/02-definition.md) | 需求卡片 / PRD |
| 交互与视觉设计 | [`lifecycle/03-design.md`](lifecycle/03-design.md) | 设计简报 |
| 技术方案 / 编码 | [`lifecycle/04-development.md`](lifecycle/04-development.md) | 技术方案 |
| 测试与质量 | [`lifecycle/05-testing.md`](lifecycle/05-testing.md) | 测试方案 |
| 发布上线 | [`lifecycle/06-release.md`](lifecycle/06-release.md) | 发布检查单 |
| 复盘沉淀 | [`lifecycle/07-retro.md`](lifecycle/07-retro.md) | 复盘模板 |

每个阶段文档都写明：进入条件、关键动作、产出物、完成定义（DoD）、交接给谁。

## 4. 与 AI 协作的三条约定

1. **让 Agent 先读上下文**：会话开始时 Agent 会自动收到上下文指引；也可以直接说「用 team-context skill 接手当前工作」。
2. **产出物用模板**：说「按模板出 <需求卡片/测试方案/…>」，Agent 会套用 `templates/` 下的结构。
3. **收尾必更新状态**：离开前说「更新 current-status」，Agent 会按 `rules/context-hygiene.md` 维护上下文。

## 5. 常用命令

```bash
teamai pull              # 拉取团队最新资源
teamai status            # 看本地与团队的差异
teamai recall <关键词>   # 搜团队沉淀过的经验
teamai contribute        # 把这次踩的坑沉淀进团队知识库
teamai env exec -- <cmd> # 带团队环境变量/机密跑命令
teamai doctor            # 出问题时诊断
```
