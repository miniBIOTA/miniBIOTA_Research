# Research Agent Memory Index

This folder is the working memory layer for `miniBIOTA_Research`.

Phase 1 status: active memory files exist, but older `docs/` and `templates/` are still active source material during migration. Do not archive or move them until a later approved phase.

## Startup Routing

1. Read `AGENTS.md`.
2. Read this index.
3. Load only the memory files needed for the active request.
4. Use the matching `skills/*/SKILL.md` playbook.
5. Use `docs/`, `templates/`, and `research/` when exact reference material still lives there.
6. Use Brain `research_brief.md` for strategy-level current research state.
7. Use Supabase read-only checks when current structured records matter.

## Memory Files

| File | Use |
|---|---|
| `01-agent-role-and-boundaries.md` | Agent scope, Content boundary, and research-first role |
| `02-source-of-truth-and-write-policy.md` | Source hierarchy, write policy, and evidence boundaries |
| `03-current-priorities-and-watchouts.md` | Current research priorities and known caution zones |
| `04-cross-domain-handoffs.md` | How Research supports Content, Website, App, Hardware, Brand, Growth, Financials, and Brain |
| `05-supabase-and-structured-record-rules.md` | When structured ecological records must be checked and how to keep reads/writes bounded |
| `06-recurring-corrections.md` | Known mistakes to avoid |
| `inbox.md` | Temporary parking lot for unresolved memory items pending placement |

## Skills

| Skill | Use |
|---|---|
| `skills/species-research/SKILL.md` | Species, organism role, range, life history, ecology, miniBIOTA suitability |
| `skills/organism-identification/SKILL.md` | Organism ID from observations, photos, video, microscopy, or field notes |
| `skills/claim-check/SKILL.md` | Scientific, ecological, website, script, brand, or growth claims |
| `skills/ecological-mechanism-brief/SKILL.md` | Nutrient cycling, oxygen dynamics, pH/alkalinity, trophic interactions, blooms, decomposition, instabilities |
| `skills/content-handoff-brief/SKILL.md` | Research context for Content without final scripts |
| `skills/experiment-background/SKILL.md` | Background research for planned experiments, introductions, interventions, or system changes |
| `skills/supabase-ecology-read/SKILL.md` | Read-only checks of current structured ecological records |
| `skills/session-closeout/SKILL.md` | Research session closeout and non-change verification |

## Migration Note

For now, do not treat this folder as replacing all of `docs/`. During Phase 1, memory and skills route the work while existing docs and templates remain active references.
