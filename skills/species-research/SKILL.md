---
name: species-research
description: Use when researching a species, organism role, range, taxonomy, life history, ecological niche, closed-system risks, or miniBIOTA suitability.
---
# Species Research Skill

## Trigger Phrases

- "Research this species"
- "What is this organism's role?"
- "Is this species suitable for miniBIOTA?"
- "Taxonomy, range, habitat, diet, reproduction"
- "Closed-system risks"
- "Florida relevance"

## Required Memory

- `memory/00-index.md`
- `memory/01-agent-role-and-boundaries.md`
- `memory/02-source-of-truth-and-write-policy.md`
- `memory/03-current-priorities-and-watchouts.md`
- `memory/05-supabase-and-structured-record-rules.md` when current records matter

## Required Docs/Templates During Migration

- `docs/research_workflow.md`
- `docs/uncertainty_labels.md`
- `templates/species-research-template.md`
- Existing files under `research/species/`, if present and relevant

## Workflow

1. Define the species or organism question and the requested output.
2. Check existing local research notes before creating duplicate work.
3. If the answer depends on current miniBIOTA state, use `skills/supabase-ecology-read/SKILL.md`.
4. Separate general literature facts from miniBIOTA observations.
5. Research taxonomy, native range, Florida relevance, habitat, diet, reproduction, tolerance ranges, ecological role, and closed-system risks.
6. Record source notes. Do not invent citations.
7. Assign an uncertainty label from `docs/uncertainty_labels.md`.
8. Include what is confirmed, inferred, unknown, and not safe to say publicly.

## Expected Output

- Species research note, brief, or answer that preserves uncertainty.
- Clear source notes.
- Content-safe summary only when useful.
- Open questions and evidence gaps.

## Write/Approval Rules

- Tell the user what files will change before editing.
- Use `templates/species-research-template.md` for new species files during migration.
- Do not change Supabase records unless explicitly approved.
- Do not create test data.

## Do Not Do

- Do not confirm species-level ID without evidence.
- Do not treat suitability research as approval to introduce an organism.
- Do not rewrite uncertain miniBIOTA observations as confirmed establishment, survival, reproduction, or ecological stability.
- Do not make husbandry, intervention, or control decisions final.
