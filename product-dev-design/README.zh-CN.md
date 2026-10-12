# 产品 + 研发 + 设计 协作 · TeamAI 团队模板

一个**开箱即用的团队 AI 仓库**（TeamAI team repo）模板：放到任意 Git 平台，
执行 `teamai init`，每位成员的每个 AI 工具都会自动获得同一套协作规范（按岗位下发）
与全流程项目上下文。

[English](README.md)

## 交付内容

| 层 | 位置 | 谁能拿到 |
|---|---|---|
| **全流程上下文** —— 阶段手册、实时状态、决策记录、产出物模板 | `docs/` | 全员、全工具 |
| **岗位契约** —— 始终生效的红线与标准 | `rules/`、`rules/<role>/` | 共享 + 按岗位 |
| **岗位技能** —— 分步 SOP（含行业最佳实践） | `skills/common/`、`skills/<role>/` | 按岗位 |
| **评审 Agent** —— PRD / 设计 / 代码 / 测试方案评审员 | `agents/`、`agents/<role>/` | 共享 + 按岗位 |
| **守护 Hooks** —— 会话上下文注入、机密与隐私守卫 | `hooks/`、`scripts/hooks/` | 自动安装 |
| **环境与机密** —— 共享变量、成员各自机密 | `env/` | 经 `teamai env exec` |

**核心承诺**：新成员（或新开的 Agent 会话）只需要知道自己的职责，就能从任意阶段
立刻开工，不需要任何人重新介绍背景。

## 岗位

| 岗位 id | 负责 | 入口 |
|---|---|---|
| `pm` | 需求发现、PRD、验收 | `docs/lifecycle/01-discovery.md` |
| `design` | 交互与视觉设计、设计系统 | `docs/lifecycle/03-design.md` |
| `dev` | 技术方案、开发、发布 | `docs/lifecycle/04-development.md` |
| `qa` | 测试策略、缺陷、发布门禁 | `docs/lifecycle/05-testing.md` |

## 全流程

`01 需求发现 → 02 需求定义 → 03 设计 → 04 开发 → 05 测试 → 06 发布 → 07 复盘`

每个阶段文档（`docs/lifecycle/`）都写明进入条件、关键动作、产出物、完成定义（DoD）
与交接要求，因此任何人都可以在中途接手。交接按 `stage-handoff` skill 的交接包规范执行，
下游不需要追问补料。

## 快速开始

```bash
# 1. 管理员：把本目录复制为一个新的 Git 仓库并推送
#    （GitHub / GitLab / TGit / CNB / 私有 Git 均可，成员需要写权限）

# 2. 邀请成员前先改这几处
#    teamai.yaml        -> repo: 仓库地址、reviewers
#    env/env.yaml       -> 你们的共享变量
#    env/secrets.yaml   -> 你们需要的机密
#    docs/context/      -> 产品全景、术语表、现状

# 3. 每位成员
teamai init https://github.com/your-org/your-teamai-repo   # 项目作用域（默认）
teamai roles set pm                                         # pm | design | dev | qa
teamai pull
```

之后成员照常打开自己的 AI 工具即可：skills / rules / agents / docs / hooks 自动送达，
每次 pull 保持最新。

## 上下文机制

1. `docs/context/current-status.md` 是项目状态的**唯一事实源**，每次会话由
   `session-context` hook 自动指引到它。
2. `docs/context/decisions.md` 追加式记录所有约束性决策（旧记录不改写）。
3. `docs/lifecycle/<阶段>.md` + `docs/templates/` 定义每个阶段怎么产出——
   产出物一律套模板，不自创结构。
4. `context-hygiene`（强制规则）把「更新状态与决策」变成完成定义的一部分。

## 按团队定制（约 30 分钟）

- [ ] `teamai.yaml` —— 仓库地址、审核人、强制规则
- [ ] `manifest/roles.yaml` —— 增删改岗位（如 `dev` 拆成 `dev-frontend` / `dev-backend`）
- [ ] `docs/context/product-overview.md` —— 你们的产品、用户、指标
- [ ] `docs/context/glossary.md` —— 你们的术语与指标口径
- [ ] `env/env.yaml`、`env/secrets.yaml`、`mcp/mcp.yaml` —— 你们的地址与工具
- [ ] `models/aliases.yaml` —— 组织可用的模型
- [ ] `rules/`、`skills/` —— 调整阈值（CR 规模、响应时限、缺陷分级）
- [ ] `hooks/hooks.yaml` —— 三个守卫按需保留/删减/扩展

## 仓库结构

```text
teamai.yaml            团队配置（分享策略、post-pull 部署脚本）
manifest/roles.yaml    岗位 → 命名空间映射（决定每个岗位收到什么）
docs/                  共享上下文：全流程、模板、现状、决策
rules/                 常驻规范（根 = 共享，<role>/ = 岗位）
skills/                工作流 SOP（common/ = 全员，<role>/ = 岗位）
agents/                子 Agent（根 = 共享，<role>/ = 岗位）
hooks/hooks.yaml       团队 hooks（上下文注入、机密守卫、隐私守卫）
scripts/               hook 脚本 + post-pull 部署器
env/                   共享变量 + 机密声明
models/aliases.yaml    模型别名（strong / fast 按工具映射）
mcp/mcp.yaml           MCP 服务器（默认为空，附示例）
```

依赖 [teamai-cli](https://www.npmjs.com/package/teamai-cli)（`npm install -g teamai-cli`）。
