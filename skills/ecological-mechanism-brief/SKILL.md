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

- `docs/research_workflow.md`
- `docs/uncertainty_labels.md`
- `docs/biogeochemical_cycles.md` when cycle context is relevant
- `docs/instabilities_and_risks.md` when risk context is relevant
- `templates/ecological-mechanism-template.md`
- Existing files under `research/ecological-mechanisms/`, if present and relevant

## Workflow

1. Define the mechanism and the research question.
2. Separate general scientific mechanism from miniBIOTA-specific observation.
3. Check current structured records if the mechanism explanation depends on current ecology.
4. Identify what is observed, inferred, plausible, unknown, and not measured.
5. Include closed-system relevance and possible stabilizing or destabilizing effects.
6. Assign uncertainty labels where claims vary in confidence.
7. Provide content-safe wording only if useful.

## Expected Output

- Mechanism explanation or durable mechanism note.
- Clear separation of general science and miniBIOTA evidence.
- Measurement gaps and open questions.
- Content-safe wording and "Do not say" boundaries when needed.

## Write/Approval Rules

- Tell the user what files will change before editing.
- Use `templates/ecological-mechanism-template.md` for new mechanism files during migration.
- Do not change risk records or structured ecological records unless explicitly approved.

## Do Not Do

- Do not present inferred mechanisms as directly measured.
- Do not imply causation from correlation.
- Do not approve interventions or system changes.
- Do not convert literature background into confirmed miniBIOTA outcomes.
