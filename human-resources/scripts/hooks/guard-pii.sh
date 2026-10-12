#!/usr/bin/env bash
# PreToolUse guard (advisory, loud): warn when unmasked personal data would be written.
# HR handles the densest PII in the company. The binding rule is rules/pii-protection.md;
# this hook exists so no one writes PII into shared docs by reflex.

payload=$(cat 2>/dev/null || true)

found=0
if printf '%s' "$payload" | grep -Eq '[0-9]{17}[0-9Xx]'; then
  echo "[teamai guard] PII WARNING: unmasked ID number detected. Mask it (110***********1234) and keep the raw value in the ATS/HRIS only." >&2
  found=1
fi
if printf '%s' "$payload" | grep -Eq '[0-9]{16,19}'; then
  echo "[teamai guard] PII WARNING: looks like a bank card number. Mask it (**** **** **** 1234)." >&2
  found=1
fi
if printf '%s' "$payload" | grep -Eq '(^|[^0-9])1[3-9][0-9]{9}([^0-9]|$)'; then
  echo "[teamai guard] PII WARNING: unmasked phone number. Mask it (138****1234)." >&2
  found=1
fi
if printf '%s' "$payload" | grep -Eqi '(salary|薪资|工资|月薪|年薪|package)[^0-9]{0,10}[0-9]{4,}'; then
  echo "[teamai guard] CONFIDENTIALITY WARNING: compensation figure detected. Compensation data is need-to-know; do not write it into shared docs." >&2
  found=1
fi

if [ "$found" = 1 ]; then
  cat >&2 <<'EOF'
  Rules (rules/pii-protection.md):
  - Shared team docs never carry raw PII or compensation; anonymize at collection time.
  - Candidate/employee raw data lives only in the ATS/HRIS, with a retention window (DATA_RETENTION_DAYS).
  - Never ask a user to paste PII into chat; read it from the ATS/HRIS through `teamai env exec --`.
EOF
fi

exit 0
