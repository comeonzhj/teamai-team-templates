# 财务团队 · TeamAI 团队模板

覆盖**预算编制 → 交易与费用审核 → 核算与月结 → 税务申报 → 分析与经营报告 → 内控与审计**
全流程的开箱即用团队 AI 仓库（TeamAI team repo）模板：放到任意 Git 平台，`teamai init` 后，
每位成员的每个 AI 工具自动获得按岗位下发的协作规范、共享上下文，以及数字准确性与内控纪律。

[English](README.md)

## 交付内容

| 层 | 位置 | 谁能拿到 |
|---|---|---|
| **流程上下文** —— 环节手册、关账日历、会计政策、财务制度、指标口径 | `docs/` | 全员、全工具 |
| **硬红线** —— 内控（职责分离/审批/证据）+ 数字准确性纪律（强制） | `rules/` | 全员 |
| **岗位契约** —— 核算 / FP&A / 税务 / 资金标准 | `rules/<role>/` | 按岗位 |
| **岗位技能** —— 月结、预算与预测、税务合规、资金与内控 SOP | `skills/` | 按岗位 |
| **评审 Agent** —— 对账、内控审查、凭证审核、预算分析、税务辅助、现金流预测 | `agents/` | 共享 + 按岗位 |
| **守护 Hooks** —— 上下文注入、机密守卫、银行卡/PII 预警 | `hooks/`、`scripts/hooks/` | 自动安装 |

**核心承诺**：新成员（或新开的 Agent 会话）只需知道自己的职责，即可从任意环节立刻开工，
且从第一分钟起就受数字纪律与内控规则约束。

## 岗位

| 岗位 id | 负责 | 入口 |
|---|---|---|
| `accounting` | 总账、应收应付、费用审核、月结 | `docs/lifecycle/03-monthly-close.md` |
| `fpna` | 预算、滚动预测、差异分析、经营报告 | `docs/lifecycle/01-budgeting.md` |
| `tax` | 申报、发票、税务风险与筹划 | `docs/lifecycle/04-tax-filing.md` |
| `treasury` | 资金、银行、内控与审计配合 | `docs/lifecycle/06-internal-control.md` |

## 全流程

`01 预算 → 02 交易与费用审核 → 03 月结 → 04 税务申报 → 05 分析报告 → 06 内控审计`

两条强制规则（成员不可删除）：

- **`rules/financial-controls.md`** —— 职责分离、审批权限、证据链（凭证 → 单据 → 审批）、
  数据保密；Agent 不付款、不申报、不改账。
- **`rules/accuracy-discipline.md`** —— 数字带口径/来源/截止时间；先对账后出数；
  禁止静默抹平；审计线索完整。

## 快速开始

```bash
# 1. 管理员：把本目录复制为新的 Git 仓库并推送
# 2. 邀请成员前先改：
#    teamai.yaml            -> 仓库地址、审核人
#    env/env.yaml           -> ERP / 银行 / 税务端点、报表币种
#    env/secrets.yaml       -> token（只读账号；值只存成员本机）
#    docs/context/          -> 财务制度、会计政策、关账日历、指标口径
# 3. 每位成员：
teamai init https://github.com/your-org/your-teamai-repo
teamai roles set accounting    # accounting | fpna | tax | treasury
teamai pull
```

## 按团队定制（约 45 分钟）

- [ ] `teamai.yaml` —— 仓库地址、审核人
- [ ] `docs/context/accounting-standards.md` —— 会计政策与科目映射
- [ ] `docs/context/finance-policy.md` —— 费用标准与审批权限
- [ ] `docs/context/close-calendar.md` —— 关账与申报节点
- [ ] `docs/context/glossary.md` —— 指标口径（**口径真源**）
- [ ] `env/env.yaml` / `env/secrets.yaml` —— 系统端点与只读凭据
- [ ] `docs/templates/` —— 按你们的 ERP 调整凭证与清单

## 仓库结构

```text
teamai.yaml            团队配置
manifest/roles.yaml    岗位 → 命名空间映射
docs/                  环节手册、模板、制度/日历/现状上下文
rules/                 协作公约 + 内控 + 数字准确性（强制）+ 岗位标准
skills/                各岗位/环节 SOP
agents/                对账、内控、凭证、预算、税务、现金流
hooks/ + scripts/      上下文注入、机密守卫、PII 预警
env/                   共享变量 + 机密声明
models/ mcp/           模型别名、MCP 服务器
```

依赖 [teamai-cli](https://www.npmjs.com/package/teamai-cli)（`npm install -g teamai-cli`）。
