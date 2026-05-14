# Current Priorities And Watchouts

This file summarizes durable caution zones for Research sessions. It is not a substitute for live Supabase checks.

## Active Priorities

- Keep observed, inferred, planned, and speculative ecology clearly separated.
- Keep current species counts, observation totals, thread state, loop state, and population state synchronized with Supabase.
- Keep Research/Ecosystem project and task status synchronized with App Planner/Supabase, not Markdown task lists.
- Maintain biome profiles and ecological risk notes as interpretation layers over structured records.
- Preserve identification gaps instead of forcing species-level certainty.
- Preserve the distinction between internal story threads and public open loops.
- Preserve the distinction between research briefs and finished public content.
- Define the research question before gathering sources or drafting handoff language.
- Record citation/source notes, open questions, and evidence gaps in durable research outputs.
- Keep source-backed claims weaker than or equal to the evidence.
- Keep suggested content-safe wording clearly separate from final public copy owned by Content, Website, Brand, or Growth.

## Watchouts

- Ecology docs can drift quickly because observations and Supabase records are updated often.
- Some biome profile details may lag live structured records.
- `skills/supabase-ecology-read/reference/ecosystem-and-data-overview.md`, `skills/species-research/reference/biome-profiles.md`, and `skills/experiment-background/reference/instabilities-and-risks.md` may contain dated counts, current-state claims, risk status, or status language such as "thriving", "established", "stable", "balanced", or "current." Treat them as historical reference/context, not live truth.
- Verify current state in Supabase before reusing species status, population outcomes, active loops/threads, chronicle state, risk state, or current biome condition.
- Dated ecosystem summaries may preserve useful architecture context, but they do not prove current population state, establishment, stability, mortality outcomes, or causal mechanisms.
- Risk references identify caution zones and measurement gaps; they do not approve interventions, organism introductions, husbandry changes, or control actions.
- Several organism identifications are unresolved or pending.
- Measurement gaps remain for CO2, O2, methane, salinity drift, pH, and dissolved oxygen.
- Macroalgae dominance, Mesostoma predation, ostracod population decline, ghost shrimp juvenile recruitment, and sea urchin establishment are active uncertainty areas unless live records say otherwise.
- Operation Living Atlas pipeline `338` / chronicle `30` has Research validation and link/evidence verification notes in `research/research-briefs/`. Before Content task `214` or any later write/media approval, carry forward the caveats: direct observation-to-pipeline/chronicle links are absent, observations `193`, `194`, and `206` may need approved relationship cleanup, media timestamp `20260408_114418.mp4` should be corrected, still-image candidates exist on disk but were not verified as indexed `media_assets`, and Daphnia-sensitive clips, Ghost Shrimp zoea footage, and Mesostoma public use remain gated.
- Operation Living Intelligence tasks `391-395` are docs-only planning artifacts for a derived graph/retrieval pilot, not canonical ecology. Task `394` passed the Stage 3 graph pilot threshold at `8 / 10`, but only supports continuing toward another docs-only design pass or a no-write derived dry-run/readback prototype. Public surface reuse mapping and real-use speed remain weak/unproven.
- OLI Content task `395` established that Content owns production context and workstation assumptions for retrieval planning. Treat source packets, final scripts, story spines, production notes, candidate footage references, hardware/local compute assumptions, and media recommendations as candidate retrieval material with publicness/review gates, not as approved graph imports, vector indexes, visual AI annotations, media metadata, public copy, or ecological writes.

## Planner Watchouts

- App Planner/Supabase is the live Research/Ecosystem task queue for project and task status.
- The Research Planner domain is `work_domains.key = ecosystem`, currently `domain_id = 3`.
- Planner writes are live Supabase writes and require explicit user approval.
- Before marking completed Research work done, ask whether it maps to a Planner task.
- Do not treat Planner task wording, project names, task IDs, dated Markdown references, hardware telemetry, or casual observations as confirmed ecological records.
- Planner owns actionable work status; Supabase owns structured ecological truth; Markdown owns evidence, uncertainty, interpretation, source context, and handoff context.

## Public-Claim Caution

Use `Do not claim publicly yet` when a claim is weak, unresolved, risky, unsupported, or likely to be misunderstood.

Run public-facing scientific, ecological, website, script, brand, campaign, sponsorship, or growth claims through `skills/claim-check/SKILL.md` before treating wording as public-ready.

Do not claim miniBIOTA ecological stability, self-sustaining population establishment, mortality conclusions, causal mechanisms, or species-level identifications unless the evidence supports that level of confidence.

Preserve uncertainty in Content, Brand, Website, Growth, and other downstream handoffs. Internal research can track `Possible`, `Speculative`, `Unknown`, `Needs microscopy`, or `Needs expert confirmation` material, but public wording must not present those claims as confirmed facts.

Use `Do not claim publicly yet` as a valid handoff outcome when the safest downstream guidance is to avoid the claim.

Always separate:

- Observed miniBIOTA facts.
- General scientific literature.
- Inference from observations.
- Planned work.
- Speculation or hypotheses.
- Public-safe wording.
