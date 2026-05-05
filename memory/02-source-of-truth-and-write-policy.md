# Source Of Truth And Write Policy

## Source Hierarchy

Use this order when sources disagree:

1. User direction in the active session.
2. `AGENTS.md` and relevant memory files.
3. Brain `M:\miniBIOTA\miniBIOTA_Brain\3. Ecosystem & Data\research_brief.md` for strategy-level current research state.
4. Supabase for structured and queryable ecological records.
5. Local `docs/`, `research/`, `skills/`, and `skills/*/reference/`.
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

`skills/supabase-ecology-read/reference/ecosystem-and-data-overview.md` and `docs/biome_profiles.md` may contain dated current-state claims, counts, or status language such as "thriving", "established", "stable", or "current." Treat them as historical reference/context, not live truth. Verify current state in Supabase before reusing counts, species status, population outcomes, active loops/threads, chronicle state, or current biome condition.

Do not convert dated summaries from migrated Brain context into live ecological facts.

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
- Do not create test data.
- Do not change structured records during documentation-only sessions.
- Do not edit Brain mirrored docs directly.
- Do not update Brain `research_brief.md` unless manager-facing state changed and the user has not deferred it.
- Do not strengthen uncertain observations into confirmed ecology.
- Do not invent citations, organism IDs, population outcomes, causal explanations, or stability claims.
- Do not treat suggested content-safe wording as approved public copy, final script language, platform metadata, or publishing language.
- If a structured record would change public-facing website behavior or content pipeline state, coordinate with Website and Content rules before closeout.
