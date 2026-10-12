---
paths: '**/*.{ts,tsx,js,jsx,go,py,java,kt,swift,vue,css,scss,sql,sh}' # 仅对代码文件生效
---

# 研发岗位（Dev）工作规范

> 产出侧的硬性准线见全队契约：`rules/engineering-contract.md`（本岗位是它的主责方）
> 与 `rules/quality-contract.md`；它们对全团队生效——PM/设计用 Agent 写的代码也按此标准验收。

适用：`rules/dev/` 命名空间，仅研发岗位的 Agent 收到。

## 技术方案

1. 中型以上需求（预估 > 3 人日）先写技术方案（`docs/templates/tech-design.md`）：目标、方案对比、数据模型/接口变更、兼容与回滚、可观测性。方案评审通过才写代码。
2. 方案必须写清**回滚策略**和**灰度/开关**；没有回滚方案的上线申请一律退回。
3. 依赖、性能预算（接口 P95、包体积、启动耗时）在方案里量化，不写「性能可接受」。

## 编码

4. 提交信息遵循 Conventional Commits（`feat: / fix: / chore: / docs: / refactor: / test:`），一个提交只做一件事；AI 参与生成的代码在提交说明中注明。
5. 公共函数与模块写文档注释；禁止 `any`/裸 except/吞异常；TODO 必须带 issue 链接，没有链接的 TODO 视为缺陷。
6. 新逻辑必须有测试；修 bug 先补一个复现测试。测试金字塔：单测为主，集成测关键路径，E2E 只测冒烟。
7. 禁止把密钥、真实数据、调试开关带进主干；用 `teamai env exec --` 跑需要凭据的命令。

## 代码评审（CR）

8. 提交 CR 前自测通过 + diff 自查一遍；单个 CR 控制在 400 行以内，超了拆分。
9. 评审响应：普通 CR 4 个工作小时内给第一轮意见；阻塞发布的 CR 优先处理。
10. 评审看四件事：正确性、可读性、测试覆盖、对 AC 的覆盖。风格问题交给 lint，不占用人工评审。

## 发布

11. 发布走 `docs/templates/release-checklist.md`；发布后盯错误率/核心指标 30 分钟，异常立即回滚而不是热修。

## 非研发岗位直接开发（PM Demo / 快速迭代）

12. 产品、设计、测试用 Coding Agent 直接开发时，适用同一套准线：`rules/design-contract.md`（UI）+
    `rules/engineering-contract.md`（代码）+ `rules/quality-contract.md`（验收），按 `demo-to-prod`
    skill 执行，目标是**产出免重构进协作**。
13. 已有项目迭代：项目约定优先（先读项目 AGENTS.md/CI/lint）；满足免重构清单且影响面可控的，
    可直接进灰度（开关 + 比例 + 监控 + 回滚），不必等全量排期。
14. 波及面大的改动（数据模型、公共接口、支付/权限）不单人直发：先走阶段 2-4 正式评审。
    对研发的要求：符合三份契约的产出**不得以风格理由要求重构**；发现契约缺口就修契约
    （走 `decisions.md` 留痕），不允许各写各的标准。
