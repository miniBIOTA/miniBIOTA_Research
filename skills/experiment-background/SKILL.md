---
name: experiment-background
description: Use to prepare background research for a planned experiment, intervention, organism introduction, husbandry action, control action, or system change without approving the action.
---
# Experiment Background Skill

## Trigger Phrases

- "Experiment background"
- "Research this intervention"
- "Should we introduce..."
- "System change research"
- "Husbandry background"
- "Control intervention"
- "Risks and variables"

## Required Memory

- `memory/00-index.md`
- `memory/01-agent-role-and-boundaries.md`
- `memory/02-source-of-truth-and-write-policy.md`
- `memory/03-current-priorities-and-watchouts.md`
- `memory/05-supabase-and-structured-record-rules.md` when current records matter

## Required Docs/Templates During Migration

- `skills/claim-check/reference/uncertainty-labels.md`
- `skills/species-research/reference/biome-profiles.md` when biome context is relevant
- `skills/ecological-mechanism-brief/reference/biogeochemical-cycles.md` when process context is relevant
- `skills/experiment-background/reference/instabilities-and-risks.md` when risk context is relevant
- Existing files under `research/experiments/`, if present and relevant

## Workflow

1. Define the proposed experiment, intervention, introduction, or system change.
2. State clearly that Research is providing background context, not approval.
3. Use this skill before organism introductions, husbandry changes, interventions, system changes, or action recommendations.
4. Use `skills/supabase-ecology-read/SKILL.md` when live ecology affects risk.
5. Use `skills/organism-identification/SKILL.md` before treating uncertain IDs as species facts.
6. Use `skills/claim-check/SKILL.md` before public-facing experiment, intervention, or suitability claims.
7. Summarize general scientific background and miniBIOTA-specific evidence separately.
8. Separate observed miniBIOTA facts, general literature, inference, planned work, speculation, and public-safe wording.
9. Identify expected signals, variables, measurement needs, and possible confounders.
10. Identify closed-system risks and ethical/ecological cautions.
11. Preserve open questions and decision points.
12. Recommend what evidence would be needed before action, without approving the action.

## Expected Output

- Experiment background note or answer.
- Experiment question, background mechanism, relevant species or biome context, expected signals, measurement needs, closed-system risks, ethical or ecological cautions, sources, and open questions.
- Risks, variables, measurements, and open questions.
- Explicit separation of observed miniBIOTA facts, general literature, inference, planned work, speculation, and public-safe wording.
- Clear boundary that no final action is approved.

## Write/Approval Rules

- Tell the user what files will change before editing.
- Place durable experiment background under `research/experiments/` during migration.
- Do not create structured records unless explicitly approved.

## Do Not Do

- Do not approve organism introductions.
- Do not approve husbandry actions, control interventions, or system changes as final actions.
- Do not present predicted outcomes as observed outcomes.
- Do not treat uncertain suitability, `Likely`, or `Possible` research conclusions as permission to act.
- Do not convert `Do not claim publicly yet` material into public-safe experiment or suitability claims.
- Do not treat suitability research as permission to act.
- Do not treat risk notes as recommended interventions, organism introductions, husbandry actions, or control actions.
- Do not reuse dated biome, risk, or population status as current state without Supabase verification.
