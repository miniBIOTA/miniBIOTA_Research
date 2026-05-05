---
id: research_workflow
title: miniBIOTA Research Workflow
domain: ecosystem_and_data
last_updated: 2026-05-05
tags: [research, workflow, species, mechanisms, claim-checks]
---
# Research Workflow

Use the lightest workflow that answers the question. Research should become durable enough for future agents to trust, but not so elaborate that the vault becomes hard to maintain.

## General Workflow

1. Define the research question.
2. Check relevant miniBIOTA observations or Supabase records if the answer depends on current state.
3. Check local docs and existing research notes.
4. Review reliable sources.
5. Separate miniBIOTA observations from general scientific literature.
6. Assign uncertainty labels from `docs/uncertainty_labels.md`.
7. Record source notes and open questions.
8. If the result feeds Content, create a brief in `research/research-briefs/`.

## Claim-Check Workflow

Use `templates/claim-check-template.md` for claims that may become scripts, captions, website copy, species cards, or campaign language.

Required fields:

- Observation.
- Research question.
- Current claim.
- Evidence found.
- Source notes.
- Confidence level.
- Recommended public wording.
- Warnings or qualifiers.
- Do not say.

Decision rules:

- If evidence is strong, mark the claim `Confirmed` or `Likely` and provide safe wording.
- If evidence is partial, mark `Possible` and keep the public wording conditional.
- If evidence is weak or unresolved, mark `Speculative`, `Unknown`, or `Do not claim publicly yet`.
- If identification is the blocker, use `Needs microscopy` or `Needs expert confirmation`.

## Species Research Workflow

Use `templates/species-research-template.md` for source-backed species files.

Include:

- Common name.
- Scientific name.
- Identification confidence.
- Taxonomy.
- Native range.
- Florida relevance.
- Habitat.
- Diet.
- Reproduction.
- Tolerance ranges, if available.
- Ecological role.
- Possible role in miniBIOTA.
- Closed-system risks.
- Interactions with known miniBIOTA organisms.
- Source list.
- Content-safe summary.
- Open questions.

Keep public-facing summaries short and cautious. Put detailed caveats in the research sections.

## Identification Note Workflow

Use `templates/identification-note-template.md` when the organism is not confidently identified.

Record:

- Observation context.
- Visual, behavioral, size, habitat, and timing evidence.
- Candidate identifications.
- What would distinguish them.
- Current confidence label.
- What evidence is needed next.
- Public-safe wording.

Prefer broader language such as "small aquatic beetle" or "unidentified amphipod" when species-level ID is not justified.

## Ecological Mechanism Workflow

Use `templates/ecological-mechanism-template.md` for reusable explanations such as:

- Carbonate buffering.
- Oxygen cycling.
- Detritus breakdown.
- Filter feeding.
- Nutrient lockup.
- Grazing pressure.
- Succession.
- Condensation and rain cycles.
- Closed-atmosphere gas balance.
- Plant competition.
- Low oxygen behavior.

Each mechanism file must separate:

- What is generally known.
- What has been observed in miniBIOTA.
- What is plausible but not confirmed.
- What can be safely said in public content.

## Experiment Background Workflow

For future experiments, place notes under `research/experiments/`.

Include:

- Experiment question.
- Background mechanism.
- Relevant species or biome context.
- Expected signals.
- Measurement needs.
- Closed-system risks.
- Ethical or ecological cautions.
- Sources.
- Open questions.

Do not present an experiment outcome as known before it has been observed and recorded.

## Research Brief Workflow

Use `templates/research-brief-template.md` when handing work to Content, Brain, Website, App, Hardware, Brand, Growth, or Financials.

Each brief should include:

- Plain-language summary.
- Strongest verified points.
- Uncertainty notes.
- Source-backed claims.
- Suggested content-safe wording.
- Phrases to avoid.
- Open research questions.

Research briefs are the default handoff format for Content.
