# 新成员（与新 Agent）上手指南

> 目标：**只需要知道自己的职责，就能从任意环节立刻开工。**
> ⚠️ 上岗第一件事：读 `rules/pii-protection.md` 与 `rules/fairness-compliance.md`（强制）。

## 1. 认领角色（3 分钟）

```bash
teamai pull
teamai roles set recruiter    # recruiter | hrbp | td | hr-ops，可逗号选多个
teamai pull
```

| 你会自动获得 | 位置 | 作用 |
|---|---|---|
| 岗位规范 | `rules/<role>/` | 常驻标准（招聘/绩效/发展/运营） |
| 岗位技能 | `skills/<role>/` | 分步 SOP |
| 岗位 Agent | `agents/<role>/` | JD/筛选/绩效/盘点辅助 |
| 全员契约 | `rules/`（根目录） | 协作公约、隐私红线、公平就业红线 |

## 2. 读三份文档（5 分钟）

1. [`context/current-status.md`](context/current-status.md) —— 漏斗、绩效周期、培养计划。
2. [`rules/pii-protection.md`](../rules/pii-protection.md) —— 隐私红线（强制）。
3. 你环节对应的阶段文档（下表）。

## 3. 从任意环节开工

| 你的职责 | 从这里开始 | 配套模板 |
|---|---|---|
| HC 需求 | [`lifecycle/01-workforce-planning.md`](lifecycle/01-workforce-planning.md) | 招聘需求单 |
| JD | [`lifecycle/02-jd.md`](lifecycle/02-jd.md) | JD 模板 |
| 筛选 | [`lifecycle/03-sourcing-screening.md`](lifecycle/03-sourcing-screening.md) | 筛选评分卡 |
| 面试 | [`lifecycle/04-interview.md`](lifecycle/04-interview.md) | 面试评分卡 |
| Offer/入职 | [`lifecycle/05-offer-onboarding.md`](lifecycle/05-offer-onboarding.md) | Offer 检查单 |
| 绩效 | [`lifecycle/06-performance.md`](lifecycle/06-performance.md) | 绩效评定表 |
| 人才培养 | [`lifecycle/07-talent-development.md`](lifecycle/07-talent-development.md) | IDP |

## 4. 与 AI 协作的三条铁律

1. **不给 Agent 粘贴 PII**：让 Agent 用 `teamai env exec --` 读 ATS/HRIS；输出示例一律虚构。
2. **Agent 不做决定**：材料整理、评分辅助、一致性检查可以交给 Agent；录用/淘汰/绩效结论由人拍板。
3. **收尾必更新**：「更新 current-status」（聚合口径 + 代号，不写姓名与敏感数据）。

## 5. 常用命令

```bash
teamai pull              # 拉取团队最新资源
teamai recall <关键词>   # 搜团队沉淀的经验
teamai contribute        # 沉淀本次经验（先脱敏）
teamai env exec -- <cmd> # 带团队变量/机密跑命令（如 ATS 查询）
teamai doctor            # 诊断
```
