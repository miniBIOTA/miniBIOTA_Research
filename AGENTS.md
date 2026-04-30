# miniBIOTA Research - Codex Agent Entry Point

## What This Repo Is
`miniBIOTA_Research` is the ecological research, species, biome, food-web, and biosphere data strategy vault for miniBIOTA. It owns ecosystem reference docs, research interpretation, biome composition, ecological risks, species-state context, and the rules for turning observations into durable ecological knowledge.

Filesystem note: this repo currently lives at `M:\miniBIOTA\minBIOTA_Research\`.

Codex is the primary operating interface for this repo. Durable operating rules and research memory belong in Markdown in this repo, in the Brain research brief, or in Supabase when the record is structured.

## Tech Stack
- Markdown vault as durable research and ecosystem memory.
- Research reference docs under `docs/`.
- Brain strategy brief at `M:\miniBIOTA\miniBIOTA_Brain\3. Ecosystem & Data\research_brief.md`.
- Supabase, via `M:\miniBIOTA\miniBIOTA_Brain\_system\minibiota_tools.py`, for species, observations, story threads, open loops, chronicles, domain history, and structured ecological records.

## Startup Sequence
For a full Codex bootstrap, run:

```powershell
powershell -ExecutionPolicy Bypass -File "_system/codex_session_start.ps1"
```

If working manually:

1. Read `AGENTS.md`.
2. Read `docs/agent_protocol.md`.
3. Read `M:\miniBIOTA\miniBIOTA_Brain\_system\agent_memory.md`.
4. Read `M:\miniBIOTA\miniBIOTA_Brain\3. Ecosystem & Data\research_brief.md`.
5. Load the lightest local research doc that can safely answer the request.
6. For current ecology, species counts, observations, threads, loops, or population claims, verify Supabase before answering in depth.

For biome composition, read `docs/biome_profiles.md`. For system processes, read `docs/biogeochemical_cycles.md`. For unresolved ecological risks, read `docs/instabilities_and_risks.md`.

## Source Of Truth
Use this hierarchy when sources disagree:

1. User direction in the current session.
2. `AGENTS.md` and `docs/agent_protocol.md` for Research Agent operating rules.
3. Brain `research_brief.md` for strategy-level current state.
4. Supabase for structured/queryable live ecological records.
5. Local `docs/` files for detailed research and ecosystem interpretation.
6. Brain mirrored docs and compiled exports as reference artifacts.

Chat history and private model memory are never source of truth. Durable project memory belongs in Markdown in this repo/vault, in Brain, or in Supabase when it is structured data.

## Research Operating Rules
- Keep observed, inferred, planned, and speculative ecology clearly separated.
- Verify current species counts, observation totals, active threads, open loops, and population state against Supabase before treating them as current.
- Do not invent species identifications, population outcomes, mortality conclusions, causal explanations, or ecological stability claims from memory.
- Use conservative scientific language when evidence is incomplete.
- Preserve the difference between internal story threads and public open loops.
- When adding or updating structured ecological data, follow Brain protocols and verify downstream links before closeout.

## Brain Relationship
This repo reports to the Strategy Agent through:

`M:\miniBIOTA\miniBIOTA_Brain\3. Ecosystem & Data\research_brief.md`

Update that brief at session end when any of these changed:
- Current ecosystem state, species/database counts, or biome summaries.
- Active ecological priorities, risks, or unresolved research questions.
- Recent species, observation, thread, loop, or chronicle milestones.
- Known data-quality issues, identification gaps, or measurement gaps.
- Cross-domain dependencies for Content, Website, Hardware, App, Brand, Growth, Financials, or Company Operations.

Do not push every observation detail into the Brain brief. Keep detailed research work in this repo and structured records in Supabase.

## Docs
| File | Contents |
|---|---|
| `docs/ecosystem_and_data_overview.md` | Original Brain Ecosystem & Data overview, retained as migrated context |
| `docs/biome_profiles.md` | Detailed ecological profiles for the six biomes |
| `docs/biogeochemical_cycles.md` | Water, nitrogen, carbon, calcium, salinity, and nutrient-cycle reference |
| `docs/instabilities_and_risks.md` | Current ecological instability and measurement-gap reference |
| `docs/agent_protocol.md` | Codex operating protocol for Research sessions |

Docs are mirrored read-only into `M:\miniBIOTA\miniBIOTA_Brain\3. Ecosystem & Data\docs\` by Brain `sync_docs.ps1`. Edit source docs here, not the Brain mirror.

## Write Policy
Respect `MINIBIOTA_WRITE_MODE` from Brain when available:

| Mode | Behavior |
|---|---|
| `read-only` | No writes anywhere |
| `confirm-before-write` | Confirm with the user before writes |
| `safe-write` | Writes may proceed after stating what will change |

For this repo, tell the user what files you intend to change before editing. Preserve user changes and keep edits scoped to the active request.

## Verification
For documentation-only sessions:
- Read every new or changed doc end to end.
- Run `git diff --name-only` or equivalent.
- Confirm no app behavior, database records, or public site behavior changed.

For live research/data sessions:
- Run or verify the relevant Supabase queries before acting on current ecology.
- Confirm species, observation, thread, loop, and chronicle links affected by the work.
- Report any live checks that could not run because of sandbox, auth, or network restrictions.

## Session Closeout Report
Close every session with:

```markdown
Changed files:
- path

Verification:
- command or read-through performed

Not changed:
- app behavior/database/public site/etc. as relevant

Unresolved questions:
- item or "None"
```

If local docs changed in a way the Strategy Agent needs, update the Brain research brief before closing unless the user explicitly defers it.
