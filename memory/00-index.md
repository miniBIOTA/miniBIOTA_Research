# Research Agent Memory Index

This folder is the working memory layer for `miniBIOTA_Research`.

Phase 1 status: active memory files exist, but older `docs/`, `templates/`, and `research/` files began as active source material during migration.

Phase 2 status: the uncertainty-label, research-workflow, content-handoff, agent-protocol, ecosystem overview, biome profile, biogeochemical cycle, and instability/risk source docs have been absorbed into `AGENTS.md`, memory, skills, and active references. The root research templates have been copied into matching `skills/*/reference/` folders and archived. Archived copies are historical, not active operating sources.

## Startup Routing

1. Read `AGENTS.md`.
2. Read this index.
3. Load only the memory files needed for the active request.
4. Use the matching `skills/*/SKILL.md` playbook.
5. Use `research/` and `skills/*/reference/` when exact reference material is needed.
6. Use Brain `research_brief.md` for strategy-level current research state.
7. Use Supabase read-only checks when current structured records matter.
8. Use App Planner/Supabase for live Research/Ecosystem project and task status only.

## Memory Files

| File | Use |
|---|---|
| `01-agent-role-and-boundaries.md` | Agent scope, Content boundary, and research-first role |
| `02-source-of-truth-and-write-policy.md` | Source hierarchy, write policy, and evidence boundaries |
| `03-current-priorities-and-watchouts.md` | Current research priorities and known caution zones |
| `04-cross-domain-handoffs.md` | How Research supports Content, Website, App, Hardware, Brand, Growth, Financials, and Brain |
| `05-database-access.md` | Research database access boundaries, owned/read/write tables, and Brain reporting expectations |
| `05-supabase-and-structured-record-rules.md` | When structured ecological records must be checked and how to keep reads/writes bounded |
| `06-recurring-corrections.md` | Known mistakes to avoid |
| `inbox.md` | Temporary parking lot for unresolved memory items pending placement |

## Planner Routing

App Planner/Supabase is the live Research/Ecosystem work queue for project and task status. The Research Planner domain is `work_domains.key = ecosystem`, currently `domain_id = 3`.

Planner tracks work only. Supabase species, biomes, observations, story threads, open loops, chronicles, and ecological link records remain the source of truth for structured ecological state. Markdown owns evidence, uncertainty, interpretation, source context, and handoff context.

Do not treat Planner task wording, task IDs, project labels, dated Markdown references, hardware telemetry, or casual observations as confirmed ecology. Planner writes are live Supabase writes and require explicit user approval.

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

## Active References

| Reference | Use |
|---|---|
| `skills/claim-check/reference/uncertainty-labels.md` | Standard uncertainty labels, public-claim readiness rules, separation requirements, and overclaiming example |
| `skills/claim-check/reference/claim-check-template.md` | Exact durable claim-check template |
| `skills/species-research/reference/species-research-template.md` | Exact species research template |
| `skills/organism-identification/reference/identification-note-template.md` | Exact organism identification note template |
| `skills/ecological-mechanism-brief/reference/ecological-mechanism-template.md` | Exact ecological mechanism template |
| `skills/content-handoff-brief/reference/research-brief-template.md` | Exact research handoff brief template |
| `skills/content-handoff-brief/reference/content-handoff-rules.md` | Exact Research-to-Content handoff rules |
| `skills/species-research/reference/biome-profile-data-model.md` | Canonical biome profile data contract for website display, Supabase tracking, Markdown interpretation, uncertainty labels, relationships, and measurement gaps |
| `skills/supabase-ecology-read/reference/ecosystem-and-data-overview.md` | Dated ecosystem/data overview preserved as historical context; verify Supabase before reusing current-state claims |
| `skills/species-research/reference/biome-profiles.md` | Dated biome descriptions and species/biome context; verify Supabase before reusing current-state claims |
| `skills/ecological-mechanism-brief/reference/biogeochemical-cycles.md` | Biogeochemical process reference; preserve observed/inferred/planned/unmeasured boundaries |
| `skills/experiment-background/reference/instabilities-and-risks.md` | Dated instability and measurement-gap context; do not convert risk notes into recommended actions |

## Routing Precedence

Use the most specific skill that fits, and layer cross-cutting safety skills when needed.

- Any current structured state should also route through `skills/supabase-ecology-read/SKILL.md`.
- Any public-facing claim inside another workflow should also route through `skills/claim-check/SKILL.md`.
- Possible introductions, interventions, husbandry changes, or system changes should route through `skills/experiment-background/SKILL.md` before suitability language becomes action-oriented.
- Uncertain organism IDs should route through `skills/organism-identification/SKILL.md` before species-level conclusions.
- Content-facing research should route through `skills/content-handoff-brief/SKILL.md` after claim and uncertainty review when needed.

## Migration Note

Memory and skills now route the work while research notes remain active under `research/`. Active templates and absorbed ecological references live in matching `skills/*/reference/` folders.
