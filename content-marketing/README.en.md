# Content Marketing — TeamAI Collaboration Template

> Put your topic-to-retro playbook, brand voice and metrics into everyone's AI tool.
> A new teammate — or a fresh AI session — starts from **any pipeline stage** after naming
> their role.

[简体中文](README.md) — the primary, user-facing guide.

## What it fixes

| Before | After |
|---|---|
| Brand voice lives in people's heads | One voice guide; every draft is checked against it |
| Winning lessons stay personal | Retros feed a searchable team knowledge base |
| Compliance by memory (ads law, copyright, facts) | Four-gate review + AI warns on prohibited claims, blocks secrets |
| Metric definitions drift, retro turns into debate | One glossary; every number carries definition + source + date |
| Strategy / writing / editing / ops work in silos | Handoff contracts per stage — anyone can pick up mid-stream |

## What you get

- **Pipeline playbook** (`docs/`): topic → research → creation → review → distribution →
  retro, each stage with entry conditions, actions, outputs, definition of done and
  handoff, plus templates (topic card, research brief, outline, review checklist,
  distribution plan, performance report).
- **One contract per role** (`rules/`, `skills/`) for strategy / writer / editor / ops.
- **Content agents** (`agents/`): fact-checker, brand-voice keeper, topic reviewer,
  SEO/readability reviewer, editorial reviewer, analytics analyst.
- **Guard hooks** (`hooks/`): session context injection, advertising-claims warnings,
  secret blocking. Enforced red line: claims, citations, copyright, privacy.

## How to use it

### Team lead — first-time setup (conversation only)

1. Copy this template into a new Git repo (ask your AI tool if unsure).
2. Say **"帮我配置团队"** — the `team-setup` assistant interviews you, extracts brand
   voice / personas / strategy / metric definitions from whatever material you paste,
   configures per-role visibility, and produces a plain-language **Configuration Review
   Sheet** for your sign-off.
3. Forward the invite blurb to your team.

### Team member — 3 minutes

```bash
npm install -g teamai-cli
# say in your AI tool:
/teamai Help me join my team's TeamAI, repo URL is https://github.com/your-org/your-repo
teamai roles set writer    # strategy | writer | editor | ops
```

### Day-to-day — just talk

`/teamai Help me manage my team` covers publishing skills/rules/docs, member and role
management, env/MCP and the team dashboard.

## Pipeline & roles

`01 topic → 02 research → 03 creation → 04 review → 05 distribution → 06 retro`

| Role | Owns | Gets |
|---|---|---|
| `strategy` | topics, calendar, competitive gaps | topic-research skill, topic reviewer |
| `writer` | research, outline, drafts | writing skill, SEO reviewer |
| `editor` | four-gate review, sign-off | editorial skill, editorial reviewer |
| `ops` | distribution, data, retros | operations skill, analytics analyst |

## FAQ

- **Can AI-published content go out directly?** No. Flow: AI-assisted draft → four-gate
  review → sign-off record → publish. AI participation is noted internally.
- **Where does compliance live?** Enforced rules (prohibited claims, verifiable citations,
  copyright, privacy) plus a claims guard hook; the human editor signs off.
- **Adding a video/live role?** Say so during setup — the assistant adds the role and its
  resource visibility.
