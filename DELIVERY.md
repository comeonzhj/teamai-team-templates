# 交付说明 · TeamAI 团队协作模板仓库（4 套）

> 交付物：四套**开箱即用的 TeamAI 团队仓库模板**，按团队类型各成一个独立目录，
> 每个目录本身就是一份完整的 team repo —— 复制到任意 Git 平台即可被
> [`teamai-cli`](https://www.npmjs.com/package/teamai-cli) 的 `teamai init` 直接接管。

## 一、交付清单

| # | 模板目录 | 适用团队 | 全流程 | 岗位（role） |
|---|---|---|---|---|
| 1 | [`product-dev-design/`](product-dev-design/) | 产品 + 研发 + 设计（含测试） | 需求发现 → 需求定义 → 设计 → 开发 → 测试 → 发布 → 复盘 | pm / design / dev / qa |
| 2 | [`content-marketing/`](content-marketing/) | 内容营销 | 选题 → 资料搜集 → 内容生成 → 审校合规 → 发布分发 → 运营复盘 | strategy / writer / editor / ops |
| 3 | [`human-resources/`](human-resources/) | 人力资源 | 人力需求 → JD → 简历筛选 → 面试 → Offer/入职 → 绩效评定 → 人才培养 | recruiter / hrbp / td / hr-ops |
| 4 | [`finance/`](finance/) | 财务 | 预算 → 费用审核 → 核算月结 → 税务申报 → 分析报告 → 内控审计 | accounting / fpna / tax / treasury |

每套模板均包含（约 50 个文件）：`teamai.yaml`（团队配置）、`manifest/roles.yaml`（岗位命名空间）、
`docs/`（全流程上下文 + 模板）、`rules/`（协作规范 + 红线）、`skills/`（岗位 SOP）、
`agents/`（评审/辅助 Agent）、`hooks/` + `scripts/`（守护 Hook）、`env/`（变量与机密）、
`models/aliases.yaml`、`mcp/mcp.yaml`，以及中英双语 README。

## 二、需求覆盖对照

### 1）「全流程上下文可被任意成员 Agent 获取」
- `docs/lifecycle/<stage>.md` 每个阶段自含**进入条件 / 关键动作 / 产出物 / DoD / 交接**，
  任意阶段可开工；`docs/templates/` 提供产出物模板（PRD、JD、评分卡、月结清单……）。
- `docs/context/current-status.md` 是唯一事实源（在产事项 / 阻塞 / 下一步），
  `docs/context/decisions.md` 追加式记录决策，配合 `context-hygiene` 规则强制维护。
- 由于 docs/ 由 `teamai pull` 分发给**所有**成员的所有 AI 工具，任何岗位的 Agent 读到的都是同一份。

### 2）「相同岗位的 Agent 有统一协作规范」
- `manifest/roles.yaml` 把岗位映射为命名空间：`rules/<role>/`（常驻规范）、
  `skills/<role>/`（工作流 SOP）、`agents/<role>/`（岗位 Agent）只下发给该岗位成员。
- 同岗位成员执行 `teamai roles set <role>` 后拿到的规范**完全一致**，不受个人配置影响。

### 3）「加入项目后只需知道职责即可立刻开工」
- `hooks/hooks.yaml` 的 `session-context` 在每次会话开始自动注入上下文指引
  （先读哪份文档、按哪个岗位规范、红线在哪）。
- `docs/onboarding.md` 三步上手：认领角色 → 读 3 份文档 → 从任意阶段开工；
  通用 `team-context` / `stage-handoff` skill 让 Agent 自己完成接手与交接。

### 4）「行业最佳实践 + 可直接使用」
- 规范内容取自各领域通行做法：产研设（RICE、AC 可测性、可用性走查、灰度回滚）、
  内容营销（来源分级与事实核查、四关审校、广告法禁用词、UTM 与内容指标口径、内容审计）、
  人力资源（成功画像、结构化面试 STAR 与评分锚点、校准会、70-20-10、九宫格继任、PII 与公平就业红线）、
  财务（职责分离、关账日历、账税差异台账、量价拆解、13 周现金流、内控矩阵）。
- Hooks 可直接运行（`guard-secrets` 阻断凭据泄露、`guard-pii` 预警明文隐私、
  `guard-claims` 预警广告法极限词），脚本由 `scripts/deploy-hooks.mjs` 在 pull 后自动部署到
  `~/.teamai/team-scripts/`（配合 `requireTeamScripts: true` 安全边界）。

## 三、使用方法

```bash
# 1) 选一套模板，复制为你的团队仓库并推到 Git 平台（成员需写权限）
cp -r product-dev-design ~/work/my-teamai && cd ~/work/my-teamai
# 2) 改必改项（每套 README 的「按团队定制」清单，约 30-45 分钟）：
#    teamai.yaml 的 repo/reviewers、docs/context/ 里的业务背景与口径、env/ 端点与机密
# 3) 成员接入
npm install -g teamai-cli
teamai init https://github.com/your-org/my-teamai
teamai roles set pm      # 认领岗位
teamai pull              # 自动获得规范/技能/Agent/文档/Hook
```

## 四、少量定制点（用户只需调整这些）

1. **业务事实**：`docs/context/` 下的产品全景 / 品牌语调 / 组织现状 / 会计政策等（模板内是示例数据）。
2. **口径与阈值**：`docs/context/glossary.md` 的指标口径、规则里的阈值（CR 400 行、响应 4 小时、
   差异 ±5%、留存 180 天等）按团队情况改。
3. **岗位**：`manifest/roles.yaml` 增删岗位（模板内有扩展说明），对应建 `rules|skills|agents/<id>/`。
4. **工具与凭据**：`env/`、`mcp/`、`models/aliases.yaml` 换成你们的系统与模型。
5. **合规词表**：`scripts/hooks/guard-claims.sh`（内容团队按所在市场法规扩充）。

## 五、质量保障（本次交付的验证记录）

- 52 个 YAML 全部解析通过（`teamai.yaml` / `manifest` / `agents` / `hooks` / `env` / `models` / `mcp`）。
- `agents/*.yaml` 字段校验通过：`name` 与文件名一致，`description`/`instructions` 齐全，
  `model` 只用 `strong`/`fast` 别名；`skills/*/SKILL.md` frontmatter `name` 与目录一致。
- `manifest/roles.yaml` 声明的每个命名空间都存在对应目录，且 skills 命名空间非空。
- `hooks.yaml` 的每个 hook 命令都指向 `~/.teamai/team-scripts/` 下真实存在的脚本
  （本次校验即发现并补齐了 finance 缺失的 `guard-secrets.sh`）。
- `bash -n` 全部 hook 脚本、`node --check` 全部 `deploy-hooks.mjs` 通过。
- `teamai.yaml` 的 `sharing.rules.enforced` 全部指向存在的规则文件，`scripts.postPull.path` 存在。

## 六、设计说明（与 teamai-cli 机制的对齐）

- 模板即 team repo：根目录 `teamai.yaml` + `skills/ rules/ docs/ agents/ hooks/ env/ mcp/ models/`，
  与 teamai-cli 的资源模型一一对应；`teamai init <repo>` 即可全量下发。
- 岗位用 role 命名空间实现（`manifest/roles.yaml` 的 `knowledge/skills/agents`），
  共享内容放各类型根目录（对全员生效），岗位内容放 `<type>/<role>/`。
- skills 全部放在命名空间目录（`skills/common`、`skills/<role>`）：启用 role 后根目录
  `skills/` 属于 tag 目录，故共享技能走 `common` 命名空间并声明进每个岗位。
- 强制规则（`sharing.rules.enforced`）保护红线不被成员删除；hooks 走
  `requireTeamScripts` 信任边界 + postPull 部署脚本，开箱即用且可审计。

## 七、维护

- 每套模板的流程变更：改 `docs/lifecycle/` + 在 `docs/context/decisions.md` 留痕。
- 沉淀经验用 `teamai contribute` / `teamai share`，团队经验进入 teamai 知识库可被 `teamai recall` 检索。
- 版本演进建议在模板仓库上打 tag，团队按自己的节奏 rebase 上游改进。
