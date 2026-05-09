# Source Of Truth And Write Policy

## Source Hierarchy

Use this order when sources disagree:

1. User direction in the active session.
2. `AGENTS.md` and relevant memory files.
3. Brain `M:\miniBIOTA\miniBIOTA_Brain\3. miniBIOTA_Research\research_brief.md` for strategy-level current research state.
4. Supabase for structured and queryable ecological records.
5. App Planner/Supabase for actionable Research/Ecosystem project and task status.
6. Local `research/`, `skills/`, and `skills/*/reference/`.
7. Compiled Brain exports and any archived/mirrored docs as reference artifacts only.

Chat history and private model memory are never durable source of truth.

## Planner Source Boundary

App Planner/Supabase is the live Research/Ecosystem work queue for project and task status. The Research Planner domain is `work_domains.key = ecosystem`, currently `domain_id = 3`.

Planner owns actionable work status only. Supabase species, biomes, observations, story threads, open loops, chronicles, and ecological link records remain the source of truth for structured ecological state. Markdown owns evidence, uncertainty, interpretation, source context, and handoff context.

Do not turn Planner task wording, task IDs, project labels, dated Markdown references, hardware telemetry, or casual observations into confirmed ecology.

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

`skills/supabase-ecology-read/reference/ecosystem-and-data-overview.md`, `skills/species-research/reference/biome-profiles.md`, and `skills/experiment-background/reference/instabilities-and-risks.md` may contain dated current-state claims, counts, risk status, or status language such as "thriving", "established", "stable", "balanced", or "current." Treat them as historical reference/context, not live truth. Verify current state in Supabase before reusing counts, species status, population outcomes, active loops/threads, chronicle state, risk state, or current biome condition.

Do not convert dated summaries from migrated Brain context into live ecological facts.

`skills/ecological-mechanism-brief/reference/biogeochemical-cycles.md` is process reference. Preserve its observed, inferred, planned, and unmeasured categories; do not convert inferred mechanisms into confirmed miniBIOTA facts.

## Source Notes And Evidence Gaps

Research outputs should record source notes as they go. Do not invent citations, imply a source supports more than it does, or let a general literature source stand in for a miniBIOTA-specific outcome.

When evidence is incomplete, preserve the gap as an open question. Do not fill it with narrative logic, expected outcomes, or dated reference material.

If a source supports a general mechanism but not the miniBIOTA-specific case, make that distinction explicit. Do not convert observations or literature background into public proof claims.

## Uncertainty Labels

Use these labels in species research, identification notes, mechanism explanations, claim checks, experiment background, and research briefs:

| Label | Use When | Public Content Guidance |
|---|---|---|
| `Confirmed` | Direct miniBIOTA evidence, reliable documentation, or strong source-backed identification supports the claim. | Can be used publicly with normal caution. |
| `Likely` | Evidence points strongly in one direction, but a final check, clearer image, measurement, or source is missing. | Public wording should include softeners such as "likely" or "appears to." |
| `Possible` | The claim is plausible and partially supported, but alternatives remain realistic. | Public wording should frame it as a possibility, not a conclusion. |
| `Speculative` | The idea is a hypothesis or interpretation with limited evidence. | Do not present as fact. Use only if the speculative nature is explicit. |
| `Unknown` | Evidence is missing, contradictory, or not yet reviewed. | Do not make a public claim beyond saying it is unknown. |
| `Needs microscopy` | Visual or behavioral evidence is not enough; microscopy is needed for confidence. | Do not present species-level identification publicly. |
| `Needs expert confirmation` | The ID or claim needs review by a specialist or authoritative source. | Use broader taxonomic or descriptive wording until confirmed. |
| `Do not claim publicly yet` | The claim is too uncertain, risky, unsupported, or easily misunderstood for public use. | Keep out of scripts, captions, website copy, polished species cards, and public campaign language. |

Keep `Do not claim publicly yet` as a strong public-facing stop condition. Material with that label may be useful internally as a research question, hypothesis, or evidence gap, but it is not ready for public content.

Do not turn `Likely` into `Confirmed` or `Possible` into `Likely` for narrative clarity.

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
- Do not update Brain `research_brief.md` unless manager-facing state changed and the user has not deferred it.
- Do not strengthen uncertain observations into confirmed ecology.
- Do not invent citations, organism IDs, population outcomes, causal explanations, or stability claims.
- Do not treat suggested content-safe wording as approved public copy, final script language, platform metadata, or publishing language.
- If a structured record would change public-facing website behavior or content pipeline state, coordinate with Website and Content rules before closeout.
