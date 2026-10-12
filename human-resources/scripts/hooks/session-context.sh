#!/usr/bin/env bash
# SessionStart hook: point every agent session at the team's live HR pipeline.

context_dir=""
for candidate in ".teamai/docs" "$HOME/.teamai/docs"; do
  if [ -f "$candidate/context/current-status.md" ]; then
    context_dir="$candidate"
    break
  fi
done

cat <<EOF
[team context] HR team (workforce planning -> JD -> screening -> interview -> offer/onboarding -> performance -> talent development).
Start from the shared context before doing anything else:
1. ${context_dir:-.teamai/docs}/context/current-status.md   — hiring funnel, performance cycle, development plans (single source of truth).
2. ${context_dir:-.teamai/docs}/onboarding.md               — role charter and stage entry points.
PRIVACY IS NON-NEGOTIABLE: read rules/pii-protection.md before handling any candidate or employee data.
   Mask ID numbers, phone, bank cards and salary; never move PII into shared docs; get written consent before background checks.
FAIRNESS: read rules/fairness-compliance.md — interview questions about marriage/children/ethnicity/religion/politics are prohibited.
If the user names a role (recruiter / hrbp / td / hr-ops), load that role's skill and rules first.
Update context/current-status.md and context/decisions.md before you finish.
EOF
