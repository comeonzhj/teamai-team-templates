# TeamAI 团队协作模板仓库（4 套）

Four ready-to-use **TeamAI team repository templates** for cross-functional team
collaboration. Each directory is a complete team repo: copy it to any Git host, run
`teamai init`, and every member's AI tools receive the team's context, per-role rules,
skills, review agents and guard hooks automatically.

交付说明（含需求对照、使用方法、定制清单、验证记录）：[DELIVERY.md](DELIVERY.md)

| Template | For | Pipeline | Roles |
|---|---|---|---|
| [`product-dev-design/`](product-dev-design/) | Product + Design + Engineering (+QA) | discovery → definition → design → development → testing → release → retro | pm · design · dev · qa |
| [`content-marketing/`](content-marketing/) | Content marketing | topic → research → creation → review → distribution → retro | strategy · writer · editor · ops |
| [`human-resources/`](human-resources/) | Human resources | workforce planning → JD → screening → interview → offer/onboarding → performance → talent development | recruiter · hrbp · td · hr-ops |
| [`finance/`](finance/) | Finance | budgeting → expense audit → monthly close → tax filing → reporting → internal control | accounting · fpna · tax · treasury |

## What every template ships

- `docs/` — full-lifecycle stage playbooks (entry conditions, actions, outputs, DoD, handoff),
  output templates, and live context (status / decisions / standards / metric definitions)
- `rules/` — always-on collaboration contract + domain red lines (enforced, cannot be deleted)
  + per-role standards
- `skills/` — operating SOPs per role and shared (`common/`)
- `agents/` — review and assist agents (PRD/editorial/code/test reviewers, fact-checker,
  privacy reviewer, voucher auditor, budget analyst, ...)
- `hooks/` + `scripts/` — session-context injection, secret blocking, PII/claims guards
- `env/`, `models/aliases.yaml`, `mcp/` — team variables, secret declarations, model aliases
- `manifest/roles.yaml` — role → namespace mapping (what each role receives)

## Quick start

```bash
cp -r <template> ~/work/my-teamai && cd ~/work/my-teamai   # 1. copy one template to a Git repo
# 2. edit teamai.yaml (repo, reviewers) + docs/context/ + env/ (see the template README)
teamai init https://github.com/your-org/my-teamai          # 3. each member
teamai roles set pm
teamai pull
```

Requires [teamai-cli](https://www.npmjs.com/package/teamai-cli) (`npm install -g teamai-cli`).
