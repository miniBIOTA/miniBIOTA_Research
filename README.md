# miniBIOTA Research

`miniBIOTA_Research` is the scientific evidence layer behind miniBIOTA.

This repo turns miniBIOTA observations into scientifically grounded knowledge: species research, organism identification support, ecological mechanisms, claim checks, uncertainty tracking, experiment background, source notes, and research briefs that downstream agents can safely use.

Filesystem note: this repo currently lives at `M:\miniBIOTA\miniBIOTA_Research\`.

## What This Repo Is For

- Source-backed species and organism research.
- Ecological mechanism explanations and reusable background notes.
- Claim verification before public content, website copy, species cards, or scripts use a biological claim.
- Identification notes that preserve uncertainty instead of forcing certainty.
- Experiment background research, closed-system risk analysis, and open research questions.
- Research briefs for `miniBIOTA_Content`, Company reporting, the website, species cards, scripts, field notes, and future experiments.

## What This Repo Is Not For

This repo should not become another content repo. By default, the Research Agent does not own final YouTube scripts, titles, thumbnails, captions, social posts, polished website copy, finished public species cards, content calendars, or platform metadata.

Those belong in `miniBIOTA_Content` unless the user explicitly asks Research to draft public-facing content.

## Relationship To Content

- `miniBIOTA_Content` creates public output: scripts, captions, website copy, episode planning, short-form posts, polished species cards, story structure, and platform metadata.
- `miniBIOTA_Research` prepares the evidence: what is known, what was observed, what is inferred, what remains uncertain, what sources support the claim, and what wording is safe.

Research hands off briefs, not finished scripts, unless specifically requested.

## Repository Structure

Use the lightest folder that fits the work:

| Path | Purpose |
|---|---|
| `AGENTS.md` | Hard operating rules and repo entry point |
| `memory/` | Durable research boundaries, source-of-truth rules, watchouts, handoff rules, structured-record rules, and recurring corrections |
| `skills/` | Active Research Agent workflow playbooks |
| `skills/*/reference/` | Exact reference material and active research templates |
| `archive/` | Historical or superseded material after explicit approval |
| `docs/` | Historical source location; active references have been absorbed into `skills/*/reference/` |
| `research/` | Working research notes, organized by topic |
| `research/species/` | Source-backed species research |
| `research/ecological-mechanisms/` | Reusable mechanism explanations |
| `research/experiments/` | Experiment background research |
| `research/identification-notes/` | Organism ID support and uncertainty notes |
| `research/claim-checks/` | Claim verification before public use |
| `research/source-library/` | Source notes, citations, and useful references |
| `research/open-questions/` | Unresolved research questions and evidence gaps |
| `research/research-briefs/` | Handoff briefs for Content, Company/Brain Company reporting, Website, and other agents |

If an existing file already fits the work, use it instead of creating duplicates.

Active templates and absorbed references live under matching `skills/*/reference/` folders. Archived docs are historical only. Working research notes remain under `research/`.

## Uncertainty Labels

Use the standard labels from `skills/claim-check/reference/uncertainty-labels.md`:

- `Confirmed`
- `Likely`
- `Possible`
- `Speculative`
- `Unknown`
- `Needs microscopy`
- `Needs expert confirmation`
- `Do not claim publicly yet`

Preserve uncertainty. Do not upgrade a claim just because it would make a cleaner story.

## Creating New Research

1. Choose the right folder under `research/`.
2. Start from the closest template in the matching `skills/*/reference/` folder.
3. Separate general scientific literature from miniBIOTA observations.
4. Add sources as you go. Do not invent citations.
5. Mark uncertainty explicitly.
6. If the result will feed Content, create a research brief in `research/research-briefs/`.

## Creating A Content Handoff Brief

Use `skills/content-handoff-brief/reference/research-brief-template.md`. Each brief should include:

- Plain-language summary.
- Strongest verified points.
- Uncertainty notes.
- Source-backed claims.
- Suggested content-safe wording.
- Phrases to avoid.
- Open research questions.

Use `skills/content-handoff-brief/reference/content-handoff-rules.md` for the exact Research-to-Content handoff rules.

## Start

```powershell
powershell -ExecutionPolicy Bypass -File "_system/codex_session_start.ps1"
```

Then route the session:

1. `AGENTS.md`
2. `memory/00-index.md`
3. Company `_system/agent_repo_registry.md` when routing/reporting paths matter
4. Relevant `memory/*.md` files for the request
5. Matching `skills/*/SKILL.md` playbook
6. `research/` and `skills/*/reference/` when exact reference material is needed
7. Brain archive lookup only when historical/provenance context matters
8. Supabase only when current structured records matter

## Company Transition Link

Company is the active top-level coordination repo. Research reporting is active at:

- `M:\miniBIOTA\miniBIOTA_Company\domains\research\research_overview.md`
- `M:\miniBIOTA\miniBIOTA_Company\domains\research\research_brief.md`

The Brain research brief is historical/archive lookup only.

Detailed research and active references live here. Any Brain-side mirrors are read-only reference artifacts, not active Research sources.

## GitHub

Remote: `https://github.com/miniBIOTA/miniBIOTA_Research`
