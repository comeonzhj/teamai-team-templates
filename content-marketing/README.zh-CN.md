# 内容营销团队 · TeamAI 团队模板

覆盖**选题 → 资料搜集 → 内容生成 → 审校 → 分发 → 运营复盘**全流程的开箱即用团队 AI 仓库
（TeamAI team repo）模板：放到任意 Git 平台，`teamai init` 后，每位成员的每个 AI 工具
自动获得同一套按岗位下发的协作规范与团队共享上下文。

[English](README.md)

## 交付内容

| 层 | 位置 | 谁能拿到 |
|---|---|---|
| **流程上下文** —— 环节手册、内容日历、品牌语调、受众画像、内容策略 | `docs/` | 全员、全工具 |
| **岗位契约** —— 含不可绕过的合规红线 | `rules/`、`rules/<role>/` | 共享 + 按岗位 |
| **岗位技能** —— 选题、写作、审校、分发与数据分析 SOP | `skills/` | 按岗位 |
| **评审 Agent** —— 选题 / SEO / 审校 / 数据分析、事实核查、品牌语调守门 | `agents/` | 共享 + 按岗位 |
| **守护 Hooks** —— 上下文注入、机密守卫、广告宣称守卫 | `hooks/`、`scripts/hooks/` | 自动安装 |
| **环境与机密** —— CMS / 数据平台地址、发布 token | `env/` | 经 `teamai env exec` |

**核心承诺**：新成员（或新开的 Agent 会话）只需知道自己的职责，即可从任意环节立刻开工，
不需要任何人重新介绍背景。

## 岗位

| 岗位 id | 负责 | 入口 |
|---|---|---|
| `strategy` | 选题、内容日历、竞品缺口 | `docs/lifecycle/01-topic-selection.md` |
| `writer` | 资料、提纲、成稿、SEO 结构 | `docs/lifecycle/02-research.md` |
| `editor` | 事实/版权/合规/语调四关审校 | `docs/lifecycle/04-editorial-review.md` |
| `ops` | 分发、渠道调优、数据复盘 | `docs/lifecycle/05-distribution.md` |

## 内容全流程

`01 选题 → 02 资料 → 03 创作 → 04 审校 → 05 分发 → 06 复盘`

每个环节文档写明进入条件、动作、产出物、DoD 与交接。合规（`rules/content-safety.md`，强制）
是硬门禁：宣称、引用、版权、隐私四类检查通过后才可发布。

## 快速开始

```bash
# 1. 管理员：把本目录复制为新的 Git 仓库并推送
# 2. 邀请成员前先改：
#    teamai.yaml            -> 仓库地址、审核人
#    env/env.yaml           -> 你们的 CMS / 数据平台地址
#    env/secrets.yaml       -> 你们的 token（值只存成员本机）
#    docs/context/          -> 品牌语调、受众画像、内容策略、指标口径
# 3. 每位成员：
teamai init https://github.com/your-org/your-teamai-repo
teamai roles set writer     # strategy | writer | editor | ops
teamai pull
```

## 按团队定制（约 30 分钟）

- [ ] `teamai.yaml` —— 仓库地址、审核人
- [ ] `manifest/roles.yaml` —— 岗位（如新增 `video`、`social`）
- [ ] `docs/context/brand-voice.md` —— 品牌人格、禁用词、渠道风格
- [ ] `docs/context/audience-personas.md` / `content-strategy.md` —— 受众与内容支柱
- [ ] `docs/context/glossary.md` —— 指标口径（**口径真源**）
- [ ] `scripts/hooks/guard-claims.sh` —— 按你们所在市场的法规扩充禁用词表
- [ ] `env/`、`mcp/`、`models/aliases.yaml` —— 端点、工具、模型

## 仓库结构

```text
teamai.yaml            团队配置（分享策略、post-pull 部署）
manifest/roles.yaml    岗位 → 命名空间映射
docs/                  环节手册、模板、内容日历/现状、决策
rules/                 常驻规范 + 内容安全红线
skills/                各环节/岗位 SOP
agents/                事实核查、品牌语调、选题/SEO/审校/数据分析
hooks/ + scripts/      上下文注入、机密守卫、宣称守卫
env/                   共享变量 + 机密声明
models/ mcp/           模型别名、MCP 服务器
```

依赖 [teamai-cli](https://www.npmjs.com/package/teamai-cli)（`npm install -g teamai-cli`）。
