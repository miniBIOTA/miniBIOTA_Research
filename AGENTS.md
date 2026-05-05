# miniBIOTA Research - Codex Agent Entry Point

## What This Repo Is

`miniBIOTA_Research` is the upstream scientific knowledge system for miniBIOTA. It exists to turn miniBIOTA observations into scientifically grounded knowledge: source-backed species research, organism identification support, ecological mechanism explanations, claim checks, uncertainty tracking, experiment background, citation notes, and research briefs for downstream agents.

This repo is the evidence layer behind `miniBIOTA_Content`, `miniBIOTA_Brain`, the website, species cards, scripts, field notes, and future experiments.

Filesystem note: this repo currently lives at `M:\miniBIOTA\miniBIOTA_Research\`.

Codex is the primary operating interface for this repo. Durable operating rules and research memory belong in Markdown in this repo, in the Brain research brief, or in Supabase when the record is structured.

## Core Boundary With Content

`miniBIOTA_Content` owns public-facing output:

- Final YouTube scripts.
- Titles, thumbnails, captions, social posts, platform metadata, and content calendars.
- Episode planning, story structure, polished website copy, and finished public species cards.

`miniBIOTA_Research` owns scientific grounding:

- Species research and organism identification support.
- Ecological mechanisms and closed-system risk analysis.
- Claim verification and source/citation tracking.
- Uncertainty labels, evidence gaps, and open research questions.
- Experiment background research.
- Research briefs for Content, Brain, Website, species cards, scripts, field notes, and future experiments.

The Research Agent should produce research briefs, not finished public content, unless the user explicitly requests final public-facing language.

## Tech Stack

- Markdown vault as durable research and ecosystem memory.
- Agent memory under `memory/`.
- Task playbooks under `skills/`.
- Future archived/superseded material under `archive/` after explicit approval.
- Research reference docs under `docs/`.
- Working research notes under `research/`.
- Reusable Markdown templates under `templates/`.
- Brain strategy brief at `M:\miniBIOTA\miniBIOTA_Brain\3. Ecosystem & Data\research_brief.md`.
- Supabase, via `M:\miniBIOTA\miniBIOTA_Brain\_system\minibiota_tools.py`, for species, observations, story threads, open loops, chronicles, domain history, and structured ecological records.

## Agent Architecture

This repo is migrating to the clean domain-agent architecture used by other miniBIOTA repos:

```text
memory/
  00-index.md
  01-agent-role-and-boundaries.md
  02-source-of-truth-and-write-policy.md
  03-current-priorities-and-watchouts.md
  04-cross-domain-handoffs.md
  05-supabase-and-structured-record-rules.md
  06-recurring-corrections.md
  inbox.md

skills/
  species-research/SKILL.md
  organism-identification/SKILL.md
  claim-check/SKILL.md
  ecological-mechanism-brief/SKILL.md
  content-handoff-brief/SKILL.md
  experiment-background/SKILL.md
  supabase-ecology-read/SKILL.md
  session-closeout/SKILL.md

archive/
```

Phase 1 note: `docs/`, `templates/`, and `research/` remain active source material during migration. Do not move, archive, delete, or rewrite them unless a later phase explicitly approves that work.

## Startup Sequence

For a full Codex bootstrap, run:

```powershell
powershell -ExecutionPolicy Bypass -File "_system/codex_session_start.ps1"
```

If working manually:

1. Read `AGENTS.md`.
2. Read `memory/00-index.md`.
3. Load the relevant memory file(s) for the request.
4. Use the matching `skills/*/SKILL.md` playbook.
5. Read `M:\miniBIOTA\miniBIOTA_Brain\_system\agent_memory.md` when shared Brain operating memory is needed.
6. Read `M:\miniBIOTA\miniBIOTA_Brain\3. Ecosystem & Data\research_brief.md` for strategy-level current research state.
7. Use `docs/`, `templates/`, and `research/` during migration or when exact reference material still lives there.
8. For current ecology, species counts, observations, threads, loops, chronicles, population claims, biome records, or risk records, use read-only Supabase verification before answering in depth.

For biome composition, read `docs/biome_profiles.md`. For system processes, read `docs/biogeochemical_cycles.md`. For unresolved ecological risks, read `docs/instabilities_and_risks.md`.

Use `docs/agent_protocol.md` as legacy active protocol during migration, but prefer the new `memory/` and `skills/` routing when the same rule exists in both places.

## Source Of Truth

Use this hierarchy when sources disagree:

1. User direction in the current session.
2. `AGENTS.md`, `memory/`, and matching `skills/*/SKILL.md` files for Research Agent operating rules.
3. Brain `research_brief.md` for strategy-level current state.
4. Supabase for structured/queryable live ecological records.
5. Local `docs/`, `research/`, `templates/`, `skills/*/reference/`, and migration notes for detailed research and ecosystem interpretation.
6. Brain mirrored docs and compiled exports as reference artifacts.

Chat history and private model memory are never source of truth. Durable project memory belongs in Markdown in this repo/vault, in Brain, or in Supabase when it is structured data.

## Research Agent Role

The Research Agent is responsible for:

- Species research, including taxonomy, native range, Florida relevance, habitat, diet, reproduction, tolerance ranges, ecological role, and closed-system risk.
- Organism identification support, with confidence levels and evidence notes.
- Ecological mechanism explanations, clearly separating general science from miniBIOTA observations.
- Claim verification before claims become scripts, cards, website copy, captions, or other public content.
- Source and citation tracking.
- Uncertainty labels and evidence-gap tracking.
- Experiment background research and risk analysis for closed-system organisms.
- Research briefs for the Content Agent and other downstream agents.

## Research Operating Rules

- Stay research-first. Prepare accurate, qualified, source-supported material that other agents can safely use.
- Keep observed miniBIOTA behavior, inferred mechanisms, planned work, and speculation clearly separated.
- Clearly separate general scientific literature from miniBIOTA-specific observations.
- Verify current species counts, observation totals, active threads, open loops, and population state against Supabase before treating them as current.
- Do not invent species identifications, population outcomes, mortality conclusions, causal explanations, ecological stability claims, or citations.
- Use conservative scientific language when evidence is incomplete.
- Preserve uncertainty instead of forcing certainty.
- Mark claims with the labels in `docs/uncertainty_labels.md`.
- Use `Do not claim publicly yet` when a claim is too weak, unresolved, or risky for public use.
- Do not convert observations, hypotheses, literature background, planned work, or plausible mechanisms into confirmed miniBIOTA claims without evidence.
- Preserve the difference between internal story threads and public open loops.
- When adding or updating structured ecological data, follow Brain protocols and verify downstream links before closeout.

## Repository Structure

Recommended working structure:

```text
memory/
  00-index.md
  01-agent-role-and-boundaries.md
  02-source-of-truth-and-write-policy.md
  03-current-priorities-and-watchouts.md
  04-cross-domain-handoffs.md
  05-supabase-and-structured-record-rules.md
  06-recurring-corrections.md
  inbox.md

skills/
  species-research/SKILL.md
  organism-identification/SKILL.md
  claim-check/SKILL.md
  ecological-mechanism-brief/SKILL.md
  content-handoff-brief/SKILL.md
  experiment-background/SKILL.md
  supabase-ecology-read/SKILL.md
  session-closeout/SKILL.md

research/
  species/
  ecological-mechanisms/
  experiments/
  identification-notes/
  claim-checks/
  source-library/
  open-questions/
  research-briefs/

templates/
  species-research-template.md
  ecological-mechanism-template.md
  claim-check-template.md
  research-brief-template.md
  identification-note-template.md

docs/
  agent_protocol.md
  research_workflow.md
  content_handoff_rules.md
  uncertainty_labels.md

archive/
```

If a folder already exists with a similar purpose, use it rather than creating a duplicate.

During migration, use `docs/` and `templates/` as active references. Later approved phases may absorb durable rules into `memory/`, workflow instructions into `skills/`, detailed references into `skills/*/reference/`, and superseded material into `archive/`.

## Skill Routing

Use the matching skill before doing task-specific work:

| Request type | Skill |
|---|---|
| Species, range, taxonomy, role, life history, suitability | `skills/species-research/SKILL.md` |
| Organism ID from observation, photo, video, microscopy, or field note | `skills/organism-identification/SKILL.md` |
| Scientific/public claim review | `skills/claim-check/SKILL.md` |
| Nutrient cycling, oxygen dynamics, pH/alkalinity, trophic mechanisms, decomposition, blooms, instability | `skills/ecological-mechanism-brief/SKILL.md` |
| Research handoff for Content | `skills/content-handoff-brief/SKILL.md` |
| Background for experiment, intervention, introduction, husbandry action, or system change | `skills/experiment-background/SKILL.md` |
| Current structured ecology, counts, observations, threads, loops, chronicles, biomes, risks | `skills/supabase-ecology-read/SKILL.md` |
| Session closeout | `skills/session-closeout/SKILL.md` |

## Content Handoff Rules

Research hands off evidence, not finished content, unless explicitly asked.

Every Content handoff brief should include:

- Plain-language summary.
- Strongest verified points.
- Uncertainty notes.
- Source-backed claims.
- Suggested content-safe wording.
- Phrases to avoid.
- Open research questions.

Do not hand Content a stronger claim than the evidence supports. When the public-safe version is weaker, say so plainly.

## Brain Relationship

This repo reports to the Strategy Agent through:

`M:\miniBIOTA\miniBIOTA_Brain\3. Ecosystem & Data\research_brief.md`

Update that brief at session end when any of these changed:

- Current ecosystem state, species/database counts, or biome summaries.
- Active ecological priorities, risks, or unresolved research questions.
- Recent species, observation, thread, loop, or chronicle milestones.
- Known data-quality issues, identification gaps, or measurement gaps.
- Cross-domain dependencies for Content, Website, Hardware, App, Brand, Growth, Financials, or Company Operations.
- Research operating structure or handoff rules that the Strategy Agent needs to know.

Do not push every observation detail into the Brain brief. Keep detailed research work in this repo and structured records in Supabase.

## Docs

| File | Contents |
|---|---|
| `docs/ecosystem_and_data_overview.md` | Original Brain Ecosystem & Data overview, retained as migrated context |
| `docs/biome_profiles.md` | Detailed ecological profiles for the six biomes |
| `docs/biogeochemical_cycles.md` | Water, nitrogen, carbon, calcium, salinity, and nutrient-cycle reference |
| `docs/instabilities_and_risks.md` | Current ecological instability and measurement-gap reference |
| `docs/agent_protocol.md` | Codex operating protocol for Research sessions |
| `docs/research_workflow.md` | Species, mechanism, claim-check, and research-brief workflows |
| `docs/content_handoff_rules.md` | Rules for sending research to `miniBIOTA_Content` |
| `docs/uncertainty_labels.md` | Standard uncertainty labels and public-claim rules |

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
