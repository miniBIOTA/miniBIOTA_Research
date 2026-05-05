---
name: supabase-ecology-read
description: Use when current structured records matter, including species counts, observations, active threads, open loops, population state, chronicles, biome records, or risk records.
---
# Supabase Ecology Read Skill

## Trigger Phrases

- "Current species count"
- "Latest observations"
- "Active story threads"
- "Open loops"
- "Population state"
- "Chronicles"
- "Biome records"
- "Risk records"
- "Verify Supabase"

## Required Memory

- `memory/00-index.md`
- `memory/02-source-of-truth-and-write-policy.md`
- `memory/05-supabase-and-structured-record-rules.md`
- `memory/06-recurring-corrections.md`

## Required Docs/Templates During Migration

- Brain `M:\miniBIOTA\miniBIOTA_Brain\_system\agent_memory.md`
- Brain `M:\miniBIOTA\miniBIOTA_Brain\3. Ecosystem & Data\research_brief.md`
- Brain `M:\miniBIOTA\miniBIOTA_Brain\_system\minibiota_tools.py` when using local Python helpers
- Relevant local docs only as interpretation references, not live totals

## Workflow

1. Identify which current structured records matter.
2. Use read-only queries or tools by default.
3. Query only the necessary tables/fields.
4. Treat `docs/ecosystem_and_data_overview.md` and `docs/biome_profiles.md` as reference/context, not live truth.
5. Verify Supabase before reusing counts, species status, population outcomes, active loops/threads, chronicle state, or current biome condition.
6. Compare live records against local docs only when needed.
7. Use `skills/claim-check/SKILL.md` before turning current-state findings into public-facing claims.
8. Use `skills/organism-identification/SKILL.md` before treating uncertain IDs as species facts.
9. Use `skills/experiment-background/SKILL.md` before introductions, husbandry changes, interventions, system changes, or action recommendations.
10. Report what was verified and what could not be verified.
11. Keep any current-state answer tied to the check performed.

## Expected Output

- Read-only verification summary.
- Current counts or records when requested.
- Clear separation of live structured records from local reference/context docs.
- Clear caveat if live access failed or was not run.
- No writes, no test data.

## Write/Approval Rules

- Read-only unless the user explicitly approves a structured write task.
- Do not create test records.
- If a required live check fails because of sandbox, auth, or network restrictions, report it and request/perform approved access only when necessary.

## Do Not Do

- Do not infer live counts from old docs.
- Do not update species, observation, thread, loop, chronicle, biome, risk, or food-web records.
- Do not create dummy writes to inspect behavior.
- Do not blur story threads and open loops.
