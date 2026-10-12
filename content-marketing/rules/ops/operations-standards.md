# 内容运营岗位（Ops）工作规范

适用：`rules/ops/`，仅运营岗位的 Agent 收到。

## 分发

1. 发布前产出分发计划（`docs/templates/distribution-plan.md`）：渠道 × 形式 × 时间 × 频次 × 目标指标。
2. 渠道差异化改造，不做一稿全平台复制：标题、开头、长度、话题标签按平台调性改写。
3. UTM/渠道参数命名统一（`UTM_SOURCE_PATTERN`），发布时逐条核对，链接必测。
4. 首发时间按受众活跃数据定（来源：ANALYTICS_DASHBOARD_URL），不拍脑袋。

## 数据与复盘

5. 指标口径以 `docs/context/glossary.md` 为准：曝光、点击率、阅读完成率、互动率、线索/转化。
   汇报数字必须带口径、时间范围与来源。
6. 每篇内容发布后 24h / 7d 两个时点回填数据到 `current-status.md`。
7. 复盘（`docs/templates/performance-report.md`）拆解因子：选题 × 标题 × 结构 × 渠道 × 时机，
   结论落到「可复制的做法」与「要停止的做法」，不写流水账。
8. 爆款与翻车都要沉淀：`teamai contribute` 写入团队知识库（脱敏后），供后续选题检索。

## 渠道治理

9. 渠道账号权限最小化；发布 token 走 `env/secrets.yaml` + `teamai env exec --`，不进文稿。
10. 评论区舆情：负面/敏感 2 小时内上报内容负责人，回复口径先审后发。
