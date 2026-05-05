# Supabase And Structured Record Rules

Supabase is the source of truth for current structured ecological records.

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
- Create test data.
- Use dummy writes to inspect return values.
- Change species, biome, chronicle, observation, risk, food-web, or research-note records without explicit approval.
- Change structured records that affect public-facing website behavior or content pipeline state without coordinating the relevant Website and Content rules.

## Story Threads And Open Loops

Keep the distinction sharp:

- Story threads are internal ecological tracking.
- Open loops are public audience-facing questions seeded by published content.

Do not create an open loop for a new observation. New ecological developments may suggest a story thread, but structured writes require explicit approval.

When structured ecological records are changed in an approved task, preserve links to relevant species, biomes, systems, story threads, open loops, observations, chronicles, and media where applicable. Verify affected links before closeout.

## Current-State Language

When Supabase could not be checked, say so and keep current-state claims conditional. Do not treat local docs as live totals when the task depends on current records.

Use local docs, migrated overview references, and templates as interpretation or workflow references only. Do not reuse dated counts, status language, population outcomes, active loops/threads, chronicle state, or current biome condition without live verification.
