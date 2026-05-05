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

## Required References / Context

- `skills/claim-check/reference/uncertainty-labels.md`
- `skills/species-research/reference/species-research-template.md`
- `skills/species-research/reference/biome-profiles.md` when biome or species/biome context is relevant
- Existing files under `research/species/`, if present and relevant

## Workflow

1. Define the species or organism question and the requested output.
2. Check existing local research notes before creating duplicate work.
3. Use `skills/organism-identification/SKILL.md` before treating uncertain IDs as species facts.
4. If the answer depends on current miniBIOTA state, use `skills/supabase-ecology-read/SKILL.md`.
5. Use `skills/experiment-background/SKILL.md` before organism introductions, husbandry changes, interventions, system changes, or action recommendations.
6. Separate observed miniBIOTA facts, general literature, inference, planned work, speculation, and public-safe wording.
7. Research taxonomy, native range, Florida relevance, habitat, diet, reproduction, tolerance ranges, ecological role, and closed-system risks.
8. Record interactions with known miniBIOTA organisms when evidence supports them.
9. Record source notes. Do not invent citations.
10. Assign an uncertainty label from `skills/claim-check/reference/uncertainty-labels.md`.
11. Use `skills/claim-check/SKILL.md` before making public-facing claims.
12. Include what is confirmed, inferred, unknown, and not safe to say publicly.

## Expected Output

- Species research note, brief, or answer that preserves uncertainty.
- Common name, scientific name, identification confidence, taxonomy, native range, Florida relevance, habitat, diet, reproduction, tolerance ranges when available, ecological role, possible miniBIOTA role, closed-system risks, and known interactions when useful.
- Clear source notes.
- Explicit separation of observed miniBIOTA facts, general literature, inference, planned work, speculation, and public-safe wording.
- Content-safe summary only when useful.
- Open questions and evidence gaps.

## Write/Approval Rules

- Tell the user what files will change before editing.
- Use `skills/species-research/reference/species-research-template.md` for new species files during migration.
- Do not change Supabase records unless explicitly approved.
- Do not create test data.

## Do Not Do

- Do not confirm species-level ID without evidence.
- Do not treat `Likely` or `Possible` as confirmed.
- Do not soften `Do not claim publicly yet`; it is a strong public-facing stop condition.
- Do not treat suitability research as approval to introduce an organism.
- Do not rewrite uncertain miniBIOTA observations as confirmed establishment, survival, reproduction, or ecological stability.
- Do not reuse dated overview status language as current species status without Supabase verification.
- Do not reuse dated biome-profile status language as current biome condition, population outcome, or species status without Supabase verification.
- Do not make husbandry, intervention, or control decisions final.
