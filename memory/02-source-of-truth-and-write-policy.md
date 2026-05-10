# Source Of Truth And Write Policy

## Source Hierarchy

Use this hierarchy when sources disagree:

1. User direction in the current session.
2. `AGENTS.md`, `memory/`, and matching `skills/*/SKILL.md` files for Research Agent operating rules.
3. Company `_system/agent_repo_registry.md` for top-level routing, reporting-path transition state, risk levels, and cross-domain ownership.
4. Company Research reporting paths.
5. Company reporting path `M:\miniBIOTA\miniBIOTA_Company\domains\research\research_brief.md` as manager-facing current state.
6. Supabase for structured/queryable live ecological records.
7. App Planner/Supabase for actionable Research/Ecosystem project and task status.
8. Local `research/`, `skills/*/reference/`, and migration notes for detailed research and ecosystem interpretation.
9. Compiled Brain exports and any archived/mirrored docs as transition reference artifacts only.

Chat history and private model memory are never source of truth.

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
- Do not create, link, close, rename, or otherwise update App Planner projects/tasks unless the user explicitly approves the Planner write.
- Do not create test data.
- Do not change structured records during documentation-only sessions.
- Do not edit, sync, or recreate retired Brain docs mirrors.
- Do not update Company reports unless manager-facing state changed and the user has not deferred it. Brain reports are historical/archive lookup only.
- Do not strengthen uncertain observations into confirmed ecology.
- Do not invent citations, organism IDs, population outcomes, causal explanations, or stability claims.
- Do not treat suggested content-safe wording as approved public copy, final script language, platform metadata, or publishing language.
- If a structured record would change public-facing website behavior or content pipeline state, coordinate with Website and Content rules before closeout.
