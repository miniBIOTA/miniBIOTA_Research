# Supabase And Structured Record Rules

Supabase is the source of truth for current structured ecological records.

App Planner/Supabase is the source of truth for live Research/Ecosystem project and task status. The Research Planner domain is `work_domains.key = ecosystem`, currently `domain_id = 3`.

Planner owns actionable work status only. Supabase species, biomes, observations, story threads, open loops, chronicles, and ecological link records remain the source of truth for structured ecological state. Markdown owns evidence, uncertainty, interpretation, source context, and handoff context.

## Use Supabase When Current Records Matter

Use read-only checks before answering in depth about:

- Species counts or species records.
- Observation totals or observation details.
- Active story threads.
- Open loops.
- Population status.
- Chronicle records.
- Biome records.
- Risk records.
- Observation-thread or observation-loop links.
- Data model or link integrity involving species, biomes, observations, chronicles, story threads, open loops, systems, or media.

If a research question, claim check, mechanism explanation, species note, experiment background, or handoff depends on current miniBIOTA state, run the current-state check before presenting the claim as current.

## Read-Only Default

Research sessions default to read-only structured checks unless the user explicitly asks for and approves writes.

Do not:

- Write to Supabase during documentation-only work.
- Create, link, close, rename, reprioritize, reopen, or otherwise update App Planner projects/tasks without explicit user approval.
- Create test data.
- Use dummy writes to inspect return values.
- Change species, biome, chronicle, observation, risk, food-web, or research-note records without explicit approval.
- Change structured records that affect public-facing website behavior or content pipeline state without coordinating the relevant Website and Content rules.

Do not turn Planner task wording, task IDs, project labels, dated Markdown references, hardware telemetry, or casual observations into confirmed ecology.

## Story Threads And Open Loops

Keep the distinction sharp:

- Story threads are internal ecological tracking.
- Open loops are public audience-facing questions seeded by published content.

Do not create an open loop for a new observation. New ecological developments may suggest a story thread, but structured writes require explicit approval.

When structured ecological records are changed in an approved task, preserve links to relevant species, biomes, systems, story threads, open loops, observations, chronicles, and media where applicable. Verify affected links before closeout.

## Current-State Language

When Supabase could not be checked, say so and keep current-state claims conditional. Do not treat local references as live totals when the task depends on current records.

Use migrated overview, biome, mechanism, risk references, and templates as interpretation or workflow references only. Do not reuse dated counts, status language, risk status, population outcomes, active loops/threads, chronicle state, or current biome condition without live verification.
