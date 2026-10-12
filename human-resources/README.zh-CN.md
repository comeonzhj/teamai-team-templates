# 人力资源团队 · TeamAI 团队模板

覆盖**人力需求 → JD → 简历筛选 → 面试 → Offer/入职 → 绩效评定 → 人才培养**全流程的
开箱即用团队 AI 仓库（TeamAI team repo）模板：放到任意 Git 平台，`teamai init` 后，
每位成员的每个 AI 工具自动获得按岗位下发的协作规范、共享上下文，以及隐私与公平合规守卫。

[English](README.md)

## 交付内容

| 层 | 位置 | 谁能拿到 |
|---|---|---|
| **流程上下文** —— 环节手册、组织现状、用人标准、职级胜任力、绩效框架 | `docs/` | 全员、全工具 |
| **硬红线** —— 隐私保护 + 公平就业（强制、不可删除） | `rules/` | 全员 |
| **岗位契约** —— 招聘 / HRBP / 人才发展 / HR 运营标准 | `rules/<role>/` | 按岗位 |
| **岗位技能** —— 招聘、绩效管理、人才发展、HR 运营 SOP | `skills/` | 按岗位 |
| **辅助 Agent** —— JD 撰写、简历筛选（仅辅助）、面试题设计、绩效辅导、人才分析、隐私审查 | `agents/` | 共享 + 按岗位 |
| **守护 Hooks** —— 上下文注入、机密守卫、PII/薪酬预警 | `hooks/`、`scripts/hooks/` | 自动安装 |

**核心承诺**：新成员（或新开的 Agent 会话）只需知道自己的职责，即可从任意环节立刻开工，
且从第一分钟起就受隐私与公平规则约束。

## 岗位

| 岗位 id | 负责 | 入口 |
|---|---|---|
| `recruiter` | 需求受理、JD、渠道、筛选、面试、Offer | `docs/lifecycle/01-workforce-planning.md` |
| `hrbp` | 绩效周期、校准、员工关系 | `docs/lifecycle/06-performance.md` |
| `td` | 胜任力模型、IDP、培训、继任 | `docs/lifecycle/07-talent-development.md` |
| `hr-ops` | 入离职、主数据、合规档案 | `docs/lifecycle/05-offer-onboarding.md` |

## 全流程

`01 人力需求 → 02 JD → 03 筛选 → 04 面试 → 05 Offer/入职 → 06 绩效 → 07 人才培养`

两条强制规则（成员不可删除）：

- **`rules/pii-protection.md`** —— 采集即脱敏、原始数据只在 ATS/HRIS、遵守留存期限、
  不把 PII 粘进提示词。
- **`rules/fairness-compliance.md`** —— 提问禁区、结构化评分与行为证据、校准会、
  负面决定可复核。

Agent 在人事决定上**仅辅助**：整理材料、按评分卡打分、做一致性检查——录用/淘汰/绩效
结论由人拍板。

## 快速开始

```bash
# 1. 管理员：把本目录复制为新的 Git 仓库并推送
# 2. 邀请成员前先改：
#    teamai.yaml            -> 仓库地址、审核人
#    env/env.yaml           -> ATS / HRIS 地址、留存期限
#    env/secrets.yaml       -> token（值只存成员本机）
#    docs/context/          -> 组织现状、用人标准、职级模型、绩效框架
# 3. 每位成员：
teamai init https://github.com/your-org/your-teamai-repo
teamai roles set recruiter    # recruiter | hrbp | td | hr-ops
teamai pull
```

## 按团队定制（约 45 分钟）

- [ ] `teamai.yaml` —— 仓库地址、审核人
- [ ] `manifest/roles.yaml` —— 岗位（如薪酬绩效岗用 `comp` 作为 id）
- [ ] `docs/context/competency-model.md` —— 你们的职级与行为标准
- [ ] `docs/context/performance-framework.md` —— 周期、权重、等级口径
- [ ] `docs/context/glossary.md` —— 漏斗与人才指标口径
- [ ] `env/env.yaml` —— `DATA_RETENTION_DAYS` 与端点（改前核对当地法规）
- [ ] `docs/templates/` —— 面试轮次、审批链

## 仓库结构

```text
teamai.yaml            团队配置
manifest/roles.yaml    岗位 → 命名空间映射
docs/                  环节手册、模板、组织/现状/标准上下文
rules/                 协作公约 + 隐私 + 公平就业（强制）+ 岗位标准
skills/                各岗位/环节 SOP
agents/                辅助 Agent（不做人事实质决定）
hooks/ + scripts/      上下文注入、机密守卫、PII 预警
env/                   共享变量 + 机密声明
models/ mcp/           模型别名、MCP 服务器
```

依赖 [teamai-cli](https://www.npmjs.com/package/teamai-cli)（`npm install -g teamai-cli`）。
