# Research Database Access Responsibilities

The Research Agent uses Supabase to verify current ecological state. Reads are the default. Writes are allowed only through scoped helpers or approved workflows for observations, species, biomes, chronicles, and links.

## Access Model

- Database access needed: Yes.
- Default mode: Read-only.
- MCP: Brain has broad Supabase MCP read awareness. This domain may use MCP read access for relevant research/ecology context, but should escalate cross-domain interpretation to Brain.
- Preferred path: Brain helper functions in `M:\miniBIOTA\miniBIOTA_Brain\_system\minibiota_tools.py` and repo-local read-only ecology skills.
- Secrets: Local environment variables or ignored local config only.

## Table Responsibilities

| Category | Tables |
|---|---|
| Owned | `species`, `biomes`, `biosphere_profile`, `observations`, ecological link tables, science-facing `chronicles` |
| Read-only | `content_pipeline`, `story_threads`, `open_loops`, `telemetry_snapshot` and `tasks` when needed for ecological interpretation |
| Controlled write | `species`, `biomes`, `biosphere_profile`, `observations`, `observation_thread_links`, `observation_loop_links`, `chronicles`, `chronicles_staging` through scoped helpers |
| Admin/migration | Schema/admin actions only with explicit user approval |

## Approval Boundary

Explicit user approval is required for raw SQL, migrations, destructive writes, schema changes, service-role actions, species identity changes, population/status changes, biome changes, public chronicle publication, or bulk edits.

## Brain Reporting

At session close, update Brain when ecological state changes:

- `M:\miniBIOTA\miniBIOTA_Brain\3. miniBIOTA_Research\research_overview.md`
- `M:\miniBIOTA\miniBIOTA_Brain\3. miniBIOTA_Research\research_brief.md`

Report species count changes, new organisms, observation patterns, ecological risks, claim boundaries, and cross-domain handoffs back to Brain.
