---
name: claim-check
description: Use to review scientific, ecological, public-facing, website, script, brand, growth, campaign, or species-card claims before use.
---
# Claim Check Skill

## Trigger Phrases

- "Check this claim"
- "Can we say this?"
- "Is this scientifically accurate?"
- "Public-safe wording"
- "Website claim"
- "Script claim"
- "Brand or growth claim"

## Required Memory

- `memory/00-index.md`
- `memory/01-agent-role-and-boundaries.md`
- `memory/02-source-of-truth-and-write-policy.md`
- `memory/04-cross-domain-handoffs.md`
- `memory/05-supabase-and-structured-record-rules.md` when current records matter

## Required Docs/Templates During Migration

- `skills/claim-check/reference/uncertainty-labels.md`
- `skills/claim-check/reference/claim-check-template.md`
- Existing files under `research/claim-checks/`, if present and relevant

## Workflow

1. Quote or restate the claim being checked.
2. Identify whether the claim depends on live miniBIOTA records.
3. Use `skills/supabase-ecology-read/SKILL.md` when current structured state matters.
4. Use `skills/organism-identification/SKILL.md` before treating uncertain IDs as species facts.
5. Use `skills/experiment-background/SKILL.md` before claims become introductions, husbandry changes, interventions, system changes, or action recommendations.
6. Separate observed miniBIOTA facts, general literature, inference, planned work, speculation, and public-safe wording.
7. Gather reliable source notes.
8. Assign one confidence label from `skills/claim-check/reference/uncertainty-labels.md`: `Confirmed`, `Likely`, `Possible`, `Speculative`, `Unknown`, `Needs microscopy`, `Needs expert confirmation`, or `Do not claim publicly yet`.
9. Provide recommended public wording that is weaker than or equal to the evidence.
10. List warnings, qualifiers, and phrases to avoid.
11. If the claim feeds Content, Website, Brand, Growth, or public campaign language, route the result through the relevant handoff workflow before treating it as public-ready.

## Expected Output

- Observation, research question, current claim, evidence found, source notes, confidence level, recommended public wording, warnings or qualifiers, and "Do not say" guidance.
- Claim verdict with confidence label.
- Evidence summary and source notes.
- Explicit separation of observed miniBIOTA facts, general literature, inference, planned work, speculation, and public-safe wording.
- Public-safe wording.
- "Do not say" list.
- Open questions or evidence gaps.

## Write/Approval Rules

- Tell the user what files will change before editing.
- Use `skills/claim-check/reference/claim-check-template.md` for durable claim checks during migration.
- Do not write to Supabase unless explicitly approved.

## Do Not Do

- Do not make public claims stronger than the evidence.
- Do not treat `Likely` or `Possible` as confirmed.
- Do not soften `Do not claim publicly yet`; it is a strong public-facing stop condition.
- Do not imply a source confirms a miniBIOTA-specific outcome unless it directly does.
- Do not turn unresolved observations into confirmed ecology.
- Do not create final public copy unless explicitly asked.
- Do not treat a claim-check wording suggestion as approved script, website, campaign, or publishing language.
- Do not classify dated overview claims as current or public-ready without Supabase verification.
