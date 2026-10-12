#!/usr/bin/env bash
# PreToolUse guard (advisory): warn when unmasked personal data is written.
# User research notes, interview transcripts and bug reports often carry PII.
# Exit 0 always — this warns; the enforcement is the team rule (rules/ai-usage-policy.md).

payload=$(cat 2>/dev/null || true)

found=0
if printf '%s' "$payload" | grep -Eq '[0-9]{17}[0-9Xx]'; then
  echo "[teamai guard] Warning: looks like a PII ID number. Mask it (e.g. 110***********1234) before writing." >&2
  found=1
fi
if printf '%s' "$payload" | grep -Eq '(^|[^0-9])1[3-9][0-9]{9}([^0-9]|$)'; then
  echo "[teamai guard] Warning: looks like a phone number. Mask it (e.g. 138****1234) before writing." >&2
  found=1
fi
if printf '%s' "$payload" | grep -Eqi '[A-Za-z0-9._%+-]+@(example|test)\.[A-Za-z]{2,}'; then
  : # example/test addresses are fine
elif printf '%s' "$payload" | grep -Eqi '[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}'; then
  echo "[teamai guard] Warning: this write contains an email address. Keep user data out of the shared docs/ tree; anonymize research material." >&2
  found=1
fi

[ "$found" = 1 ] && echo "  Rule: anonymize PII at collection time. Shared team docs must never carry raw personal data." >&2
exit 0
