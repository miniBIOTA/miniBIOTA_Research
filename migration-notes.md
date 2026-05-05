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

## Phase 2 Batch 3

Phase 2 Batch 3 copied the active research templates into matching `skills/*/reference/` folders as exact reference material:

- `templates/claim-check-template.md` to `skills/claim-check/reference/claim-check-template.md`.
- `templates/species-research-template.md` to `skills/species-research/reference/species-research-template.md`.
- `templates/identification-note-template.md` to `skills/organism-identification/reference/identification-note-template.md`.
- `templates/ecological-mechanism-template.md` to `skills/ecological-mechanism-brief/reference/ecological-mechanism-template.md`.
- `templates/research-brief-template.md` to `skills/content-handoff-brief/reference/research-brief-template.md`.

The root `templates/` files remained in place during Batch 3. For active skill routing, the skill-reference copies became the preferred template paths.

No templates were filled with sample data, and no species, claims, organism IDs, mechanisms, or handoff briefs were created.

## Phase 2 Batch 3B

Phase 2 Batch 3B archived the root research templates after confirming each root template exactly matched its skill-reference copy.

Archived root templates:

- `archive/superseded/claim-check-template.md`
- `archive/superseded/species-research-template.md`
- `archive/superseded/identification-note-template.md`
- `archive/superseded/ecological-mechanism-template.md`
- `archive/superseded/research-brief-template.md`

Active template references now live at:

- `skills/claim-check/reference/claim-check-template.md`
- `skills/species-research/reference/species-research-template.md`
- `skills/organism-identification/reference/identification-note-template.md`
- `skills/ecological-mechanism-brief/reference/ecological-mechanism-template.md`
- `skills/content-handoff-brief/reference/research-brief-template.md`

The root `templates/` files are no longer active operating sources.

## Phase 2 Batch 4

Phase 2 Batch 4 absorbed the Research-to-Content handoff source doc into memory, skills, and `skills/content-handoff-brief/reference/content-handoff-rules.md`.

The old doc was fully absorbed and moved to:

`archive/superseded/content_handoff_rules.md`

Active handoff guidance now lives in:

- `memory/04-cross-domain-handoffs.md` for Research/Content division of labor, handoff checklist, downstream domain boundaries, and public-copy ownership.
- `memory/02-source-of-truth-and-write-policy.md` for source expectations, evidence gaps, and proof-claim boundaries.
- `memory/03-current-priorities-and-watchouts.md` for public-claim caution and `Do not claim publicly yet` as a valid handoff outcome.
- `memory/06-recurring-corrections.md` for avoiding the mistake of treating handoff wording as final public copy.
- `skills/content-handoff-brief/SKILL.md` for the active handoff workflow.
- `skills/content-handoff-brief/reference/content-handoff-rules.md` for the exact migrated handoff rules.

The migrated rules preserve Research/Content ownership boundaries, source and citation expectations, uncertainty and public-readiness guidance, Supabase verification when current structured records matter, and the rule that Research does not create final scripts, captions, website copy, titles, thumbnails, platform metadata, publishing language, or approved public copy by default.

## Phase 2 Batch 5

Phase 2 Batch 5 absorbed the legacy Research Agent protocol into `AGENTS.md`, memory, and active skills.

The old protocol was fully absorbed and moved to:

`archive/superseded/agent_protocol.md`

Active protocol guidance now lives in:

- `AGENTS.md` for the Research Agent entry point, startup sequence, source hierarchy, hard operating rules, skill routing, Brain relationship, write policy, and verification expectations.
- `memory/01-agent-role-and-boundaries.md` for role, boundaries, research outputs, default workflow, evidence categories, and research writing voice.
- `memory/02-source-of-truth-and-write-policy.md` for source hierarchy, no chat/private memory as durable truth, evidence gaps, write policy, public-copy boundaries, and structured/public behavior coordination.
- `memory/04-cross-domain-handoffs.md` for Brain update criteria, downstream dependencies, and Content/Website/Brand/Growth handoff boundaries.
- `memory/05-supabase-and-structured-record-rules.md` for current-state verification, structured-record link integrity, and story thread/open loop separation.
- `skills/session-closeout/SKILL.md` for closeout checklist, verification, non-change confirmations, Brain/domain follow-up, and sync/commit boundaries.

The migrated rules preserve Research Agent role and boundaries, startup procedure, source-of-truth order, no chat/private memory as durable truth, evidence-first operation, uncertainty routing, no invented IDs/citations/outcomes/mortality/stability/causal claims, current-state Supabase verification, Brain research brief relationship, cross-domain handoffs, closeout format, and write/approval rules.

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
