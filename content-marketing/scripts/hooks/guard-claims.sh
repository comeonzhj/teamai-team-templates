#!/usr/bin/env bash
# PreToolUse guard (advisory): flag promotional claims that break advertising law
# and brand rules (CN 广告法 absolute claims, unverifiable superlatives, medical claims).
# Exit 0 always — this warns; the enforcement is rules/content-safety.md.

payload=$(cat 2>/dev/null || true)

# Absolute claims commonly prohibited in ads/marketing copy (CN advertising law art. 9 + typical brand bans).
claims='(国家级|世界级|全球第一|全网第一|销量第一|第一品牌|最(佳|优秀|先进|高级|低价|划算|强|大|好)|顶级|极品|最好|最强|最优|最大|最新技术|独家|绝无仅有|史无前例|万能|100%|零风险|无副作用|包治|根治|治愈|药到病除)'

if printf '%s' "$payload" | grep -Eq "$claims"; then
  cat >&2 <<'EOF'
[teamai guard] Warning: this write contains an absolute/promotional claim that likely violates
advertising rules (e.g. 国家级 / 最 / 第一 / 100% / 零风险 / 医疗功效词).
  - Replace with verifiable, qualified wording ("在 X 口径下为 Y", cite the source).
  - Every comparative/superlative claim needs a citation and a date.
See rules/content-safety.md for the full banned-claim policy.
EOF
fi

exit 0
