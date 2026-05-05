# Source Of Truth And Write Policy

## Source Hierarchy

Use this order when sources disagree:

1. User direction in the active session.
2. `AGENTS.md` and relevant memory files.
3. Brain `M:\miniBIOTA\miniBIOTA_Brain\3. Ecosystem & Data\research_brief.md` for strategy-level current research state.
4. Supabase for structured and queryable ecological records.
5. Local `docs/`, `research/`, `templates/`, `skills/`, and `skills/*/reference/`.
6. Brain mirrored docs and compiled exports as reference artifacts only.

Chat history and private model memory are never durable source of truth.

## Current-State Claims

Verify Supabase before treating any of these as current:

- Species counts.
- Observation totals.
- Active story threads.
- Open loops.
- Population state.
- Chronicle records.
- Biome records.
- Risk records.
- Structured ecological links.

## Write Policy

Respect `MINIBIOTA_WRITE_MODE` from Brain when available.

| Mode | Behavior |
|---|---|
| `read-only` | No writes anywhere |
| `confirm-before-write` | Confirm with the user before writes |
| `safe-write` | Writes may proceed after stating what will change |

For this repo, always tell the user what files you intend to change before editing.

## Boundaries

- Do not write to Supabase unless the user explicitly approves a structured write task.
- Do not create test data.
- Do not change structured records during documentation-only sessions.
- Do not edit Brain mirrored docs directly.
- Do not update Brain `research_brief.md` unless manager-facing state changed and the user has not deferred it.
- Do not strengthen uncertain observations into confirmed ecology.
- Do not invent citations, organism IDs, population outcomes, causal explanations, or stability claims.
