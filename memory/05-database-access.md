# Research Database Access Responsibilities

The Research Agent uses Supabase to verify current ecological state and App Planner/Supabase to verify current Research/Ecosystem project and task status. Reads are the default. Writes are allowed only through scoped helpers or approved workflows for observations, species, biomes, chronicles, links, and explicitly approved Planner updates.

## Access Model

- Database access needed: Yes.
- Default mode: Read-only.
- MCP/read-only awareness is preferred for relevant research/ecology context. Use Company `_system/agent_repo_registry.md` for cross-domain interpretation and ownership routing.
- Preferred path: MCP/read-only awareness first plus repo-local read-only ecology skills. Use MCP/read-only awareness and Company/domain-owned helpers; Brain helper functions are retired from normal workflows.
- Secrets: Local environment variables or ignored local config only.
- Research Planner domain: `work_domains.key = ecosystem`, currently `domain_id = 3`.

## Table Responsibilities

| Category | Tables |
|---|---|
| Owned | `species`, `biomes`, `biosphere_profile`, `observations`, ecological link tables, science-facing `chronicles` |
| Read-only | `content_pipeline`, `story_threads`, `open_loops`, `telemetry_snapshot`, `work_domains`, `work_projects`, and `work_tasks` when needed for ecological interpretation or Research work status |
| Controlled write | `species`, `biomes`, `biosphere_profile`, `observations`, `observation_thread_links`, `observation_loop_links`, `chronicles`, `chronicles_staging` through scoped helpers; `work_projects` and `work_tasks` only after explicit Planner-write approval |
| Admin/migration | Schema/admin actions only with explicit user approval |

## Approval Boundary

Explicit user approval is required for raw SQL, migrations, destructive writes, schema changes, service-role actions, species identity changes, population/status changes, biome changes, public chronicle publication, bulk edits, or any App Planner project/task create, link, rename, reprioritize, close, reopen, or status update.

Planner tracks work only. Do not use Planner task wording, task IDs, project labels, dated Markdown references, hardware telemetry, or casual observations as evidence for confirmed ecological state.

## Project-Manager Delegation
When Josue grants standing Research project-manager delegation, the Research Agent may manage ordinary Research/Ecosystem Planner `work_projects` and `tasks` inside `work_domains.key = ecosystem` / `domain_id = 3` through the approved shared Planner/Supabase write path. State intended Planner changes before writing, read changed rows back, and report changed records at closeout. This delegation does not cover species, biomes, observations, ecological links, chronicles, public ecology records, schema/migrations, service-role/admin actions, app behavior, or claims.

## Transition Reporting

At session close, update or flag manager-facing Research reports only when ecological state changes:

- Company candidate: `M:\miniBIOTA\miniBIOTA_Company\domains\research\research_brief.md`
- Company reporting path: `M:\miniBIOTA\miniBIOTA_Company\domains\research\research_brief.md`

Report species count changes, new organisms, observation patterns, ecological risks, claim boundaries, and cross-domain handoffs only when manager-facing state changed and the user has not deferred reporting updates.
