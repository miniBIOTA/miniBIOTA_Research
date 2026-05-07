---
id: biome_profile_data_model
title: Canonical Biome Profile Data Model
domain: ecosystem_and_data
last_updated: 2026-05-07
tags: [biomes, website, supabase, data-model, uncertainty, tracking]
---
# Canonical Biome Profile Data Model

This is the Research Agent contract for biome profile data used by the public website, the App, Brain handoffs, and ongoing ecological tracking.

Supabase is the source of truth for structured and queryable biome records. Markdown is the interpretation layer: it explains evidence, uncertainty, source context, measurement gaps, and why a public-facing field should be worded cautiously.

Live schema note: Supabase schema was checked read-only on May 7, 2026. The `biomes` table exists with six rows and public website fields already present. This document defines the canonical profile shape; fields marked "recommended structured addition" are not assumed to exist until a migration is approved.

## Core Rules

- Do not use old biome profile prose as current state unless Supabase verifies the current record.
- Do not embed species membership as a plain text list when it can be derived from `species_to_biomes` and `species`.
- Do not make public stability, establishment, population, mortality, causation, or measurement claims without an uncertainty label.
- Keep public wording weaker than or equal to the evidence.
- Keep "story threads" and "open loops" separate: threads are internal ecological tracking; loops are audience-facing questions seeded by published content.
- The public website should present biome state as observed and evolving, not as proof of closed-system stability.

## Required Fields

These fields define the minimum canonical biome profile for website display and ongoing tracking.

| Field | Owner | Current Supabase field | Required for public website | Notes |
|---|---|---|---|---|
| `id` | Supabase | `biomes.id` | Yes | Canonical numeric biome id. Must match hardware/app biome ids where relevant. |
| `slug` | Supabase | `biomes.slug` | Yes | Stable URL key. Do not rename without Web coordination. |
| `name` | Supabase | `biomes.name` | Yes | Canonical record name. Map legacy "Grassland" to public "Lowland Meadow" only when the site or approved copy expects that label. |
| `public_display_name` | Supabase, recommended structured addition | Not currently separate | Yes | Use if public label diverges from internal record name. Until added, Web may map labels carefully. |
| `realm` | Supabase | `biomes.realm` | Yes | Freshwater, marine, terrestrial, transitional, or other approved realm grouping. |
| `interface_tag` | Supabase | `biomes.interface_tag` | Yes | Short scanning label for UI and cross-biome navigation. |
| `hero_description` | Supabase | `biomes.hero_description` | Yes | One to two public-safe sentences. No full observation history. |
| `biome_description` | Supabase | `biomes.biome_description` | Yes | Concise public profile paragraph. Avoid "stable", "balanced", "thriving", or "self-sustaining" unless verified and labeled. |
| `habitat_typology` | Supabase | `biomes.habitat_typology` | Yes | Ecological type, such as freshwater aquatic, transitional shoreline, terrestrial meadow, marine shoreline, or marine aquatic. |
| `habitat_theme_goal` | Supabase | `biomes.habitat_theme_goal` | Optional public, required internal | Intended ecological role or design direction. Keep separate from achieved outcome. |
| `image_filename` | Supabase | `biomes.image_filename`; `biome_images` for gallery | Yes | Primary image reference. Gallery images belong in `biome_images`. |
| `date_established` | Supabase | `biomes.date_established` | Optional public, required internal | Use exact date if known, otherwise cautious text. |
| `last_observed` | Supabase | `biomes.last_observed` | Internal and admin | A human-readable summary date or note. Do not substitute for observation records. |
| `profile_last_verified_at` | Supabase, recommended structured addition | Not currently separate | Required internal | Date the profile was checked against live records. Until added, record verification in Markdown closeout or system logs. |
| `profile_uncertainty_label` | Supabase, recommended structured addition | Not currently separate | Required internal | Overall profile confidence using the standard Research uncertainty labels. Until added, record in Markdown. |
| `public_claim_status` | Supabase, recommended structured addition | Not currently separate | Required internal | Values should include public-safe, cautious-public, internal-only, and do-not-claim-publicly-yet. |

## Physical And Environmental Fields

These fields describe the habitat envelope. They belong in Supabase when they are durable, queryable, or shown on the website. Markdown may explain methods, source limits, and unresolved measurement gaps.

| Field | Owner | Current Supabase field | Display guidance |
|---|---|---|---|
| `system_volume` | Supabase | `biomes.system_volume` | Use for physical profile cards when known. |
| `dimensions_footprint` | Supabase | `biomes.dimensions_footprint` | Use for engineering or habitat context. |
| `estimated_size` | Supabase | `biomes.estimated_size` | Legacy/general size field. Prefer more specific volume/footprint fields when available. |
| `substrate_profile` | Supabase | `biomes.substrate_profile` | Public-safe if descriptive and not over-interpreted. |
| `hardscape_elements` | Supabase | `biomes.hardscape_elements` | Structural elements only; avoid ecological outcome claims. |
| `temperature_range` | Supabase | `biomes.temperature_range` | Use only measured, target, or literature-derived wording clearly marked. |
| `ph_range` | Supabase | `biomes.ph_range` | Do not imply active monitoring if pH is not being measured. |
| `salinity_specific_gravity` | Supabase | `biomes.salinity_specific_gravity` | Marine and brackish fields should distinguish target from measured value. |
| `core_humidity_range` | Supabase | `biomes.core_humidity_range` | Use for atmospheric/terrestrial biome display when measured or target-based. |
| `target_nutrient_levels` | Supabase | `biomes.target_nutrient_levels` | Target or desired envelope only, unless measured. |
| `alkalinity_calcium` | Supabase | `biomes.alkalinity_calcium` | Mark as measured, inferred, target, or unknown. |
| `lighting_profile_par` | Supabase | `biomes.lighting_profile_par` | PAR/spectrum claims require measurement or hardware reference. |
| `photoperiod` | Supabase | `biomes.photoperiod` | Durable setting, public-safe if current. |
| `flow_weather_dynamics` | Supabase | `biomes.flow_weather_dynamics` | Separate designed dynamics from observed behavior. |
| `primary_filtration_method` | Supabase | `biomes.primary_filtration_method` | Use "biological", "none", or mechanism-specific wording cautiously. |

## Ecological Function Fields

These fields describe role, composition, and maintenance pressure. The field text should be concise in Supabase; detailed interpretation belongs in Markdown.

| Field | Owner | Current Supabase field | Notes |
|---|---|---|---|
| `primary_producers` | Supabase | `biomes.primary_producers` | Summary only. Species-level lists should be derived from `species_to_biomes` where possible. |
| `cleanup_crew_profile` | Supabase | `biomes.cleanup_crew_profile` | Functional groups and confirmed key organisms only. Avoid establishment claims unless supported. |
| `nutrient_export_system` | Supabase | `biomes.nutrient_export_system` | Describe mechanisms without claiming effectiveness unless measured or observed. |
| `species_diversity_notes` | Supabase | `biomes.species_diversity_notes` | High-level composition summary. Counts require live verification. |
| `ecological_notes` | Supabase | `biomes.ecological_notes` | Durable short interpretation. For long evidence chains, link or summarize a Markdown note. |
| `current_stability_status` | Supabase | `biomes.current_stability_status` | Must be label-aware and conservative. Avoid "stable" unless evidence supports it. |
| `routine_maintenance_schedule` | Supabase | `biomes.routine_maintenance_schedule` | Operational schedule only; not evidence of ecological stability. |
| `primary_maintenance_focus` | Supabase | `biomes.primary_maintenance_focus` | Current attention area, not an intervention approval. |
| `maintenance_notes` | Supabase | `biomes.maintenance_notes` | Short operational context. Detailed rationale belongs in experiment background or Markdown. |

## Optional Fields

Optional fields should be added only when they are useful for website display, App filtering, or scientific tracking.

| Field | Owner | Status | Use |
|---|---|---|---|
| `key_processes` | Markdown now; Supabase if filterable later | Recommended interpretation field | Nitrogen cycling, detritus processing, grazing, erosion, larval production, soil building. |
| `active_tensions` | Markdown now; Supabase if dashboarded later | Recommended interpretation field | Macroalgae, erosion, predator pressure, recruitment uncertainty, oxygen risk, salinity drift. |
| `indicator_species_ids` | Supabase, recommended structured addition | Not currently separate | Species used as public or internal indicators for biome condition. |
| `dominant_species_ids` | Supabase, recommended structured addition | Not currently separate | Only if Web/App need curated display separate from all linked species. |
| `featured_observation_ids` | Supabase, recommended structured addition or Web query | Not currently separate | Observations selected for public display. |
| `featured_chronicle_ids` | Supabase, recommended structured addition or Web query | Not currently separate | Use only if default chronicle queries need editorial ordering. |
| `measurement_gap_summary` | Markdown now; Supabase if tracking becomes structured | Recommended internal field | Human-readable summary of unmeasured variables and claim limits. |
| `last_live_check_summary` | Markdown/system log now | Optional internal field | What was checked before updating public fields. |

## Public-Safe Wording

Use these wording patterns in `hero_description`, `biome_description`, and any Website handoff.

| Evidence level | Public-safe pattern | Avoid |
|---|---|---|
| Confirmed observation | "Recent observations show..." | "This proves..." |
| Likely interpretation | "The biome appears to be..." | "The biome is..." |
| Possible mechanism | "One possible explanation is..." | "This happened because..." |
| Unknown state | "This is still unresolved." | "The outcome is clear." |
| Active risk | "This is an active watch point." | "The system is failing" unless verified. |
| Design intent | "This biome is designed to..." | "This biome successfully..." unless measured or observed. |

Public biome language should prefer:

- "observed", "documented", "appears", "likely", "possible", "under observation", "unresolved", "designed to", "currently being tracked".

Public biome language should avoid unless directly supported:

- "stable", "balanced", "thriving", "self-sustaining", "established", "crashed", "fixed", "solved", "proven", "closed-loop success".

## Uncertainty Labels

Use the standard Research labels for biome profile claims:

| Label | Biome-profile use |
|---|---|
| `Confirmed` | Direct miniBIOTA observation, measured parameter, live Supabase record, or strongly supported source confirms the claim. |
| `Likely` | Evidence points strongly in one direction, but measurement, observation duration, or source review is incomplete. |
| `Possible` | Plausible and partially supported, with realistic alternatives. |
| `Speculative` | Hypothesis, mechanism idea, or early interpretation with limited evidence. |
| `Unknown` | Evidence is missing, contradictory, or not reviewed. |
| `Needs microscopy` | Relevant when biome composition depends on uncertain microfauna, algae, fungi, or microbial ID. |
| `Needs expert confirmation` | Relevant when a biome claim depends on specialist ID or ecological interpretation. |
| `Do not claim publicly yet` | Use for current stability, establishment, causation, or success claims that are too weak or risky for public display. |

Until dedicated uncertainty fields exist in Supabase, store claim-level labels in the Markdown interpretation note or closeout summary, and keep the public Supabase text conservative.

## Relationships

The biome profile is a hub record. Its relationships should be derived from structured records rather than copied into free text whenever possible.

| Relationship | Canonical source | Website/tracking use |
|---|---|---|
| Biome to species | `species_to_biomes.biome_id`, `species_to_biomes.species_id`; species details in `species` | Species list, functional composition, population-status filters, featured organisms. |
| Primary species biome | `species.main_biome` | Search/filter convenience only. Do not treat as complete membership when `species_to_biomes` exists. |
| Biome observations | `observations.biome_id` | Recent evidence, current-state verification, story movement, chronicle candidates. |
| Species observations within biome | `observations.biome_id` plus `observations.species_id` | Supports species-biome interaction and population claims. |
| Internal story tracking | `story_threads.biome_id` and `story_threads.species_id` | Internal developing arcs. Not audience-facing by default. |
| Audience open questions | `open_loops.biome_id` and `open_loops.species_id` | Public unresolved questions seeded by published content. |
| Published biome history | `chronicles.scope_type='biome'`, `chronicles.biome_id` | Public biome chronicle feed. For biome-scope chronicles, `species_id` should be null unless schema/query rules explicitly change. |
| Secondary chronicle subjects | `chronicle_subject_links` | Optional contextual display when a chronicle affects multiple subjects. |
| Media | `biome_images`, `media_biomes`, `media_chronicles` | Public imagery, internal media tagging, evidence review. |
| Systems | `systems`, `system_logs.biome_id`, future telemetry tables | Hardware/environment context without implying direct web control. |

Chronicle routing rule: `scope_type` controls the public route. A biome page should query biome-scope chronicles by `scope_type='biome'` and `biome_id`. A species-scope chronicle with a `biome_id` is still a species chronicle unless deliberately linked or duplicated under approved rules.

Public biome species-grid rule: Web's existing contract controls display. Use `species_to_biomes` for membership, then filter public biome-detail species cards to `species.display_status = 'active'` and exclude `species.population_status` values of `Extirpated` or `Removed`. Removed/extirpated species may be retained in the main species directory archive, but Research should not treat them as current biome-detail inhabitants.

## Measurement Gaps

Measurement gaps should be explicit because they control what the website can safely claim.

Known recurring gap categories:

- Dissolved oxygen and oxygen dynamics.
- Carbon dioxide.
- Methane and anaerobic gas risk.
- pH drift.
- Salinity and specific gravity drift.
- Alkalinity and calcium.
- Nutrient concentrations.
- PAR/light intensity.
- Humidity gradients.
- Temperature gradients.
- Population counts and recruitment evidence.
- Microscopy or expert ID for unresolved organisms.

Storage rule:

- Put measured values, current settings, and durable current-state summaries in Supabase.
- Put "we do not measure this yet", why it matters, how it limits public claims, and what evidence would close the gap in Markdown interpretation.
- If a gap becomes operationally tracked or dashboarded, create an approved structured table or field rather than burying it in prose.

## Supabase Versus Markdown

Use this split consistently.

### Belongs In Supabase

- Canonical biome identity: `id`, `slug`, `name`, `realm`, `interface_tag`.
- Website display blurbs: `hero_description`, `biome_description`, image fields.
- Durable physical/environmental profile fields.
- Current short summaries that the website or App queries.
- Species/biome membership through `species_to_biomes`.
- Observations, story threads, open loops, chronicles, chronicle subject links, media links, and system logs.
- Any field needed for filtering, sorting, routing, dashboards, API responses, or public pages.

### Belongs In Markdown

- Source-backed interpretation of why a field is worded a certain way.
- Claim audits, uncertainty labels for individual claims, and "do not say" guidance.
- Evidence gaps and measurement-gap rationale.
- Literature context that does not directly prove miniBIOTA state.
- Historical explanations of how a biome changed over time.
- Open research questions that are not yet structured records.
- Draft wording and handoff notes for Website or Content before approval.

### Belongs In Both

- A concise Supabase field for display plus a Markdown note explaining evidence and uncertainty.
- A current Supabase status plus a Markdown closeout describing what was verified.
- A public-safe Website summary plus a Research note listing stronger internal claims that are not public-safe.

## Update Workflow

1. Define the biome-profile change and whether it affects public website display, internal tracking, or both.
2. Read the current `biomes` record and relevant linked species, observations, story threads, open loops, and chronicles.
3. Check whether the claim depends on current state. If yes, verify Supabase before writing or handing off.
4. Assign uncertainty labels to material claims.
5. Put durable/queryable values in Supabase only after explicit structured-write approval.
6. Put interpretation, caveats, and measurement gaps in Markdown.
7. If website behavior or public wording changes, hand off the evidence and public-safe wording to Website/Content rather than treating Research wording as final copy.
8. Close the session with changed files, verification, not-changed surfaces, and unresolved questions.

## Minimum Public Profile Shape

For website display, each biome should be able to provide this shape, whether assembled directly from Supabase fields or through an API layer:

```yaml
id:
slug:
name:
public_display_name:
realm:
interface_tag:
hero_description:
biome_description:
habitat_typology:
primary_image:
physical_profile:
  system_volume:
  dimensions_footprint:
  substrate_profile:
  hardscape_elements:
environmental_profile:
  temperature_range:
  ph_range:
  salinity_specific_gravity:
  core_humidity_range:
  lighting_profile_par:
  photoperiod:
  flow_weather_dynamics:
ecological_profile:
  primary_producers:
  cleanup_crew_profile:
  nutrient_export_system:
  species_diversity_notes:
  current_stability_status:
tracking:
  last_observed:
  profile_last_verified_at:
  profile_uncertainty_label:
  public_claim_status:
relationships:
  species:
  recent_observations:
  active_story_threads:
  open_loops:
  chronicles:
measurement_gaps:
  summary:
  claim_limits:
```

If a required display field is unknown, leave it blank or use cautious wording. Do not fill gaps with legacy profile prose, assumptions, or narrative logic.
