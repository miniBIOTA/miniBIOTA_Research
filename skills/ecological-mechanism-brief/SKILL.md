---
name: ecological-mechanism-brief
description: Use to explain ecological mechanisms such as nutrient cycling, oxygen dynamics, pH and alkalinity, trophic interactions, decomposition, blooms, succession, or instability.
---
# Ecological Mechanism Brief Skill

## Trigger Phrases

- "Explain this mechanism"
- "How does this ecological process work?"
- "Nutrient cycling"
- "Oxygen dynamics"
- "pH or alkalinity"
- "Trophic interaction"
- "Decomposition"
- "Bloom or instability"

## Required Memory

- `memory/00-index.md`
- `memory/01-agent-role-and-boundaries.md`
- `memory/02-source-of-truth-and-write-policy.md`
- `memory/03-current-priorities-and-watchouts.md`

## Required Docs/Templates During Migration

- `skills/claim-check/reference/uncertainty-labels.md`
- `docs/biogeochemical_cycles.md` when cycle context is relevant
- `docs/instabilities_and_risks.md` when risk context is relevant
- `skills/ecological-mechanism-brief/reference/ecological-mechanism-template.md`
- Existing files under `research/ecological-mechanisms/`, if present and relevant

## Workflow

1. Define the mechanism and the research question.
2. Separate general scientific mechanism from miniBIOTA-specific observation.
3. Use `skills/supabase-ecology-read/SKILL.md` when the mechanism explanation depends on current miniBIOTA state.
4. Use `skills/organism-identification/SKILL.md` before treating uncertain IDs as species facts.
5. Use `skills/experiment-background/SKILL.md` before introductions, husbandry changes, interventions, system changes, or action recommendations.
6. Identify what is observed, inferred, plausible, unknown, planned, speculative, and not measured.
7. Include closed-system relevance and possible stabilizing or destabilizing effects.
8. Assign uncertainty labels from `skills/claim-check/reference/uncertainty-labels.md` where claims vary in confidence.
9. Use `skills/claim-check/SKILL.md` before public-facing mechanism claims.
10. Provide content-safe wording only if useful.
11. Use `skills/content-handoff-brief/SKILL.md` when the mechanism explanation is being handed to Content, Website, Brand, Growth, Brain, Hardware, App, or Financials.

## Expected Output

- Mechanism explanation or durable mechanism note.
- Mechanism scope when relevant, such as carbonate buffering, oxygen cycling, detritus breakdown, filter feeding, nutrient lockup, grazing pressure, succession, condensation and rain cycles, closed-atmosphere gas balance, plant competition, or low oxygen behavior.
- Clear separation of observed miniBIOTA facts, general literature, inference, planned work, speculation, and public-safe wording.
- Measurement gaps and open questions.
- Content-safe wording and "Do not say" boundaries when needed.
- Handoff boundary when the explanation is intended for a downstream public-facing workflow.

## Write/Approval Rules

- Tell the user what files will change before editing.
- Use `skills/ecological-mechanism-brief/reference/ecological-mechanism-template.md` for new mechanism files during migration.
- Do not change risk records or structured ecological records unless explicitly approved.

## Do Not Do

- Do not present inferred mechanisms as directly measured.
- Do not treat `Likely`, `Possible`, or plausible mechanism language as confirmed miniBIOTA fact.
- Do not imply causation from correlation.
- Do not approve interventions or system changes.
- Do not convert literature background into confirmed miniBIOTA outcomes.
- Do not treat mechanism handoff wording as final public copy.
