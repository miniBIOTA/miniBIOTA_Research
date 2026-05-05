# Research Agent Migration Notes

## Phase 1

Phase 1 created the initial Codex-native architecture for `miniBIOTA_Research`:

- `memory/` for durable operating memory.
- `skills/` for task-specific playbooks.
- Selected `skills/*/reference/` folders for later absorption of detailed reference material.
- `archive/` as an empty destination for future approved archival work.

## What Was Not Migrated Yet

Existing `docs/`, `templates/`, and `research/` files were not moved, archived, deleted, or rewritten in Phase 1.

During migration, skills may still reference active docs and templates as source material.

## Future Phases

Future approved phases should:

- Absorb durable operating rules from `docs/` into `memory/`.
- Absorb workflow instructions into matching `skills/*/SKILL.md`.
- Move detailed references into `skills/*/reference/` when that is the cleaner home.
- Archive superseded docs or templates only after confirming the new architecture fully covers them.

## Phase 1 Audit

The Phase 1 audit found no blocking issues.

Follow-up clarifications were added:

- Routing precedence now directs current structured-state checks through `skills/supabase-ecology-read/SKILL.md`, public-facing claims through `skills/claim-check/SKILL.md`, uncertain organism IDs through `skills/organism-identification/SKILL.md`, action-oriented experiment or introduction questions through `skills/experiment-background/SKILL.md`, and Content-facing research through `skills/content-handoff-brief/SKILL.md`.
- `README.md` now reflects the new Research Agent architecture.
- Legacy current-state docs require Supabase verification before reuse.

The first likely migration target was the uncertainty-label source doc, because it is the cross-cutting safety contract for research claims, organism IDs, public wording, and downstream handoffs.

## Phase 2 Batch 1

Phase 2 Batch 1 absorbed the uncertainty-label source doc into active memory, skills, and `skills/claim-check/reference/uncertainty-labels.md`.

The old doc was fully absorbed and moved to:

`archive/superseded/uncertainty_labels.md`

Active references now point to `skills/claim-check/reference/uncertainty-labels.md`. The migrated rules preserve:

- All standard uncertainty labels.
- Label definitions and public-readiness guidance.
- The difference between internal research use and public content readiness.
- The required separation of observed miniBIOTA facts, general literature, inference, planned work, speculation, and public-safe wording.
- `Do not claim publicly yet` as a strong public-facing stop condition.

## Phase 2 Batch 2

Phase 2 Batch 2 absorbed the research-workflow source doc into active memory and skill playbooks.

The old doc was fully absorbed and moved to:

`archive/superseded/research_workflow.md`

Active workflow guidance now lives in:

- `memory/01-agent-role-and-boundaries.md` for the default research workflow and evidence boundary.
- `memory/02-source-of-truth-and-write-policy.md` for current-state, source-note, uncertainty, and evidence-gap rules.
- `memory/03-current-priorities-and-watchouts.md` for workflow caution zones and public-claim routing.
- `memory/04-cross-domain-handoffs.md` for Content, Brand, Website, Brain, Hardware, App, Growth, and Financials handoff rules.
- `memory/05-supabase-and-structured-record-rules.md` for current-record verification.
- `memory/06-recurring-corrections.md` for recurring workflow mistakes.
- Active `skills/*/SKILL.md` files for task-specific workflows.

The migrated rules preserve question definition, current-record checking when current miniBIOTA state matters, local source checking, reliable source review, separation of observation/literature/inference/planned work/speculation, uncertainty labeling, source notes, open questions, evidence gaps, and public-claim review before public use.

## Non-Changes

Phase 1 did not change:

- Supabase records.
- Structured ecological records.
- Species facts.
- Biome facts.
- Observation records.
- Chronicle records.
- Risk records.
- Food-web assumptions.
- Research-note records.
- App behavior.
- Public site behavior.
- Brain mirrored docs.
- Brain research brief.
- Live ecosystem actions, introductions, husbandry, controls, or recommendations.
