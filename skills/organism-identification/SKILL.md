---
name: organism-identification
description: Use when identifying an organism from observations, photos, video, microscopy, field notes, or uncertain visual evidence.
---
# Organism Identification Skill

## Trigger Phrases

- "Identify this organism"
- "What is this bug/snail/larva/algae?"
- "ID from photo"
- "ID confidence"
- "Could this be..."
- "Needs microscopy"

## Required Memory

- `memory/00-index.md`
- `memory/01-agent-role-and-boundaries.md`
- `memory/02-source-of-truth-and-write-policy.md`
- `memory/03-current-priorities-and-watchouts.md`
- `memory/05-supabase-and-structured-record-rules.md` when current records matter

## Required Docs/Templates During Migration

- `docs/research_workflow.md`
- `docs/uncertainty_labels.md`
- `templates/identification-note-template.md`
- Existing files under `research/identification-notes/`, if present and relevant

## Workflow

1. Gather observation context: date, biome, media, size, behavior, habitat, life stage, and known collection source.
2. Check existing miniBIOTA notes and use `skills/supabase-ecology-read/SKILL.md` when current structured records matter.
3. Identify candidates at the safest supported taxonomic level.
4. Record evidence for, evidence against, and realistic alternatives.
5. State what would distinguish the candidates.
6. Use uncertainty labels, especially `Needs microscopy` and `Needs expert confirmation` when appropriate.
7. Use `skills/species-research/SKILL.md` only after the taxonomic level is clear enough for species research.
8. Use `skills/claim-check/SKILL.md` before public-facing ID claims.
9. Use `skills/experiment-background/SKILL.md` before introductions, husbandry changes, interventions, system changes, or action recommendations.
10. Separate observed miniBIOTA facts, general literature, inference, planned work, speculation, and public-safe wording.
11. Provide public-safe wording that stays broad when species-level ID is not justified.

## Expected Output

- Candidate ID or identification note.
- Confidence label and evidence notes.
- Alternatives and unresolved ambiguity.
- What evidence is needed next.
- Explicit separation of observed miniBIOTA facts, general literature, inference, planned work, speculation, and public-safe wording.
- Public-safe wording and "Do not say" guidance.

## Write/Approval Rules

- Tell the user what files will change before editing.
- Use `templates/identification-note-template.md` for new ID notes during migration.
- Do not update species records or structured records unless explicitly approved.

## Do Not Do

- Do not over-confirm organism ID.
- Do not use a species name publicly when only genus, family, order, or descriptive ID is supported.
- Do not infer population state from a single visual ID.
- Do not approve introductions, husbandry actions, or control interventions.
