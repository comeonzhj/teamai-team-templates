# Human Resources — TeamAI Collaboration Template

> Put your hiring, performance and talent-development process, standards and context into
> everyone's AI tool. New teammates start from **any stage** after naming their role — with
> privacy and fairness rules applied from the first minute.

[简体中文](README.md) — the primary, user-facing guide.

## What it fixes

| Before | After |
|---|---|
| Interview standards live in interviewers' heads | Structured question bank + scoring anchors; every score cites behavioral evidence |
| JD quality varies, compliance by luck | JD template + compliance self-check (no age/gender/family limits) |
| Ratings by impression at period end, endless disputes | Standards set up front, evidence collected mid-cycle, calibration mandatory, decisions reviewable |
| Resumes, IDs, salaries forwarded casually | Enforced PII red line; AI warns to mask before writing |
| New HR needs three months of hand-holding | Pipeline playbook + role SOPs + assist agents |

## What you get

- **Pipeline playbook** (`docs/`): workforce planning → JD → screening → interview →
  offer/onboarding → performance → talent development, with templates (hiring request, JD,
  screening rubric, interview scorecard, performance review, IDP, recruiting retro).
- **One contract per role** (`rules/`, `skills/`) for recruiter / hrbp / td / hr-ops.
- **Assist agents** (`agents/`): JD writer, resume screener (**assist-only — never decides
  hire/reject**), interview question designer, performance coach, talent analyst, privacy reviewer.
- **Two enforced red lines**: PII protection, fair employment.
- **Guard hooks**: session context, secret blocking, PII/salary masking warnings.

## How to use it

### HR lead — first-time setup (conversation only)

1. Copy this template into a new Git repo (ask your AI tool if unsure).
2. Say **"帮我配置团队"** — the `team-setup` assistant interviews you, extracts org context /
   hiring principles / competency model / performance framework from your raw material
   (**masking PII first**), configures per-role visibility (e.g. compensation data stays
   minimal), and produces a plain-language **Configuration Review Sheet** for sign-off.
3. Forward the invite blurb to your team.

### Team member — 3 minutes

```bash
npm install -g teamai-cli
# say in your AI tool:
/teamai Help me join my team's TeamAI, repo URL is https://github.com/your-org/your-repo
teamai roles set recruiter    # recruiter | hrbp | td | hr-ops
```

### Day-to-day — just talk

`/teamai Help me manage my team` covers publishing, members and roles, env/MCP, dashboard.

## Pipeline & roles

`01 workforce planning → 02 JD → 03 screening → 04 interview → 05 offer/onboarding → 06 performance → 07 talent development`

| Role | Owns | Gets |
|---|---|---|
| `recruiter` | intake to offer | recruiting skill, JD writer, resume screener |
| `hrbp` | performance cycle, calibration, relations | performance skill, performance coach |
| `td` | competency model, IDP, training, succession | development skill, talent analyst |
| `hr-ops` | onboarding/offboarding, HRIS data | operations skill |

## FAQ

- **Does AI make people decisions?** No. Agents organize material, score against rubrics
  and check consistency; hire/reject/rating conclusions are human, written and reviewable.
- **How is PII protected?** Enforced red line: shared docs must mask (138\*\*\*\*1234), raw
  data stays in ATS/HRIS, retention window applies, AI warns before writing PII.
- **Fairness?** Same dimensions and anchors per role, prohibited questions listed in the
  enforced rule, scores need behavioral evidence, calibration meetings mandatory.
