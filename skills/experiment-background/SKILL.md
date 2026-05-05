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

- `docs/research_workflow.md`
- `docs/uncertainty_labels.md`
- `docs/biome_profiles.md` when biome context is relevant
- `docs/biogeochemical_cycles.md` when process context is relevant
- `docs/instabilities_and_risks.md` when risk context is relevant
- Existing files under `research/experiments/`, if present and relevant

## Workflow

1. Define the proposed experiment, intervention, introduction, or system change.
2. State clearly that Research is providing background context, not approval.
3. Check relevant current structured records if live ecology affects risk.
4. Summarize general scientific background and miniBIOTA-specific evidence separately.
5. Identify expected signals, variables, measurement needs, and possible confounders.
6. Identify closed-system risks and ethical/ecological cautions.
7. Preserve open questions and decision points.
8. Recommend what evidence would be needed before action, without approving the action.

## Expected Output

- Experiment background note or answer.
- Risks, variables, measurements, and open questions.
- Clear boundary that no final action is approved.

## Write/Approval Rules

- Tell the user what files will change before editing.
- Place durable experiment background under `research/experiments/` during migration.
- Do not create structured records unless explicitly approved.

## Do Not Do

- Do not approve organism introductions.
- Do not approve husbandry actions, control interventions, or system changes as final actions.
- Do not present predicted outcomes as observed outcomes.
- Do not treat suitability research as permission to act.
