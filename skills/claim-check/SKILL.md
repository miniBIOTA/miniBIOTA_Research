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

- `docs/research_workflow.md`
- `docs/uncertainty_labels.md`
- `docs/content_handoff_rules.md`
- `templates/claim-check-template.md`
- Existing files under `research/claim-checks/`, if present and relevant

## Workflow

1. Quote or restate the claim being checked.
2. Identify whether the claim depends on live miniBIOTA records.
3. Check Supabase read-only when current structured state matters.
4. Separate miniBIOTA observations from general literature and inference.
5. Gather reliable source notes.
6. Assign one confidence label: `Confirmed`, `Likely`, `Possible`, `Speculative`, `Unknown`, `Needs microscopy`, `Needs expert confirmation`, or `Do not claim publicly yet`.
7. Provide recommended public wording that is weaker than or equal to the evidence.
8. List warnings, qualifiers, and phrases to avoid.

## Expected Output

- Claim verdict with confidence label.
- Evidence summary and source notes.
- Public-safe wording.
- "Do not say" list.
- Open questions or evidence gaps.

## Write/Approval Rules

- Tell the user what files will change before editing.
- Use `templates/claim-check-template.md` for durable claim checks during migration.
- Do not write to Supabase unless explicitly approved.

## Do Not Do

- Do not make public claims stronger than the evidence.
- Do not imply a source confirms a miniBIOTA-specific outcome unless it directly does.
- Do not turn unresolved observations into confirmed ecology.
- Do not create final public copy unless explicitly asked.
