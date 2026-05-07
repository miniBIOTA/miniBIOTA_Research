---
id: biome_profile_website_fill_plan_2026_05_07
title: Biome Profile Website Fill Plan
domain: ecosystem_and_data
last_updated: 2026-05-07
tags: [biomes, website, supabase, data-fill, uncertainty]
---
# Biome Profile Website Fill Plan

## Research Question

What can the website safely display for each biome now, and what should remain ideal/future data until measurements, structured links, or stronger evidence exist?

## Verification Performed

- Read canonical data contract: `skills/species-research/reference/biome-profile-data-model.md`.
- Read dated biome context: `skills/species-research/reference/biome-profiles.md`.
- Ran read-only Supabase checks on May 7, 2026 for:
  - `biomes`
  - `species`
  - `species_to_biomes`
  - `observations`
  - `story_threads`
  - `open_loops`
  - `chronicles`
  - `content_pipeline`

## Conflict Rule

When sources disagree, compare dated evidence directly. The newest dated structured record wins for current-state wording. Older records remain useful as historical context, published story context, or evidence of how the biome got here.

Use this order for biome website fill decisions:

1. Newer direct observations, chronicles, and published pipeline records with clear dates.
2. Older direct observations, chronicles, and published pipeline records.
3. Current Supabase profile fields.
4. Dated Markdown biome profile context.

If a `content_pipeline` record's `biome_id` conflicts with its title/description text, do not use it as direct biome evidence until the mismatch is resolved. Several older pipeline rows have this issue, usually because the row has one biome id while the description says "Set in" another biome.

## Big Picture

The six `biomes` records currently have the old public basics filled: `id`, `name`, `slug`, `realm`, `date_established`, `last_observed`, `biome_description`, `image_filename`, and `created_date`. Marine Shore also has `interface_tag` and `hero_description`.

Most newer website profile fields are still blank across all six biomes: `habitat_typology`, `habitat_theme_goal`, `system_volume`, `dimensions_footprint`, `substrate_profile`, `hardscape_elements`, environmental ranges, ecological summaries, maintenance focus, and stability status.

The strongest immediate website move is to fill the profile fields with cautious display copy and keep current-state counts, species lists, observations, threads, loops, and chronicles derived from their structured tables.

## Global Fill Strategy

### Fill Now

These can be filled now for all biomes using known system architecture, existing records, recent observations, and public-safe wording:

- `habitat_typology`
- `interface_tag`
- `hero_description`
- `habitat_theme_goal`
- `substrate_profile`
- `primary_producers`
- `nutrient_export_system`
- `cleanup_crew_profile`
- `current_stability_status`
- `primary_maintenance_focus`
- `ecological_notes`
- `species_diversity_notes`
- `maintenance_notes`

### Derive Now Instead Of Manually Writing

These should be queried from structured records rather than copied into biome prose:

- Species list from `species_to_biomes` plus `species`, after link cleanup.
- Recent observations from `observations.biome_id`.
- Active story threads from `story_threads.biome_id`.
- Active public questions from `open_loops.biome_id`.
- Public history from `chronicles.scope_type='biome'` and `chronicles.biome_id`.
- Published public context from `content_pipeline`, using `published_date` and checking for `biome_id`/description conflicts.
- Media from `biome_images`, `media_biomes`, and `media_chronicles`.

### Fill Later / Ideal Data

These should wait for hardware specs, measurement workflow, or approved structured migration:

- `public_display_name`
- `profile_last_verified_at`
- `profile_uncertainty_label`
- `public_claim_status`
- `system_volume`
- `dimensions_footprint`
- `hardscape_elements`
- `temperature_range`
- `ph_range`
- `salinity_specific_gravity`
- `core_humidity_range`
- `target_nutrient_levels`
- `alkalinity_calcium`
- `lighting_profile_par`
- `photoperiod`
- `flow_weather_dynamics`
- `primary_filtration_method`
- `routine_maintenance_schedule`

## Structured Link Gaps

The `species_to_biomes` table is currently incomplete compared with `species.main_biome` text and recent observations. Do not build the public species roster solely from `species_to_biomes` until cleanup.

Current live check:

| Biome | `species_to_biomes` links | `species.main_biome` candidates not linked |
|---|---:|---:|
| Freshwater Lake | 6 | 46 |
| Lakeshore | 10 | 13 |
| Lowland Meadow | 7 | 28 |
| Mangrove Forest | 5 | 12 |
| Marine Shore | 16 | 12 |
| Seagrass Meadow | 14 | 24 |

High-priority link cleanup examples:

- Freshwater Lake: Daphnia, Mesostoma, Moina, freshwater amphipod, seed shrimp, bladder snail, apple snail, ramshorn snail, tapegrass, Amazon sword.
- Marine Shore: Gulf marsh crab, ladder hornsnail, Eastern Melampus, lawn shrimp, fiddler crab, shoreline plants.
- Seagrass Meadow: slipper snail, marine scud, eelgrass isopod, macroalgae, green feather algae, Cerith snail, oyster, barnacle.
- Lowland Meadow: mole cricket, ridgeback grasshopper, armyworm, isopods, springtails, meadow plants.
- Mangrove Forest: mangrove tree crab, black/white/red mangroves, coinvine, Brazilian pepper, ghost ant where still relevant.
- Lakeshore: crypt ant, amber snail, freshwater amphipod, bladder snail, dollarweed, Ludwigia/shoreline plants if represented as species.

## Content Pipeline Notes

The content pipeline adds useful public-facing context and, in some cases, newer evidence than the first observation pass.

Strongest direct pipeline updates by biome:

| Biome | Newest useful pipeline records | Website-useful details |
|---|---|---|
| Freshwater Lake | Pipeline 350, May 1, 2026; pipeline 338, April 17, 2026 | Ghost shrimp offspring are public context, but the record explicitly does not prove establishment. Lake opacity, flagfish removal, Daphnia collection/introduction, and microcrustacean food-web rebuilding are core public story context. |
| Lakeshore | Pipeline 64, December 15, 2025; pipeline 75, November 18, 2025; plus newer observations | Pipeline records support rain-distribution and gravity-triggered rain context, but newer 2026 observations should drive current ecology. Some older Lakeshore rows have `biome_id`/description conflicts, so use cautiously. |
| Lowland Meadow | Pipeline 31, March 4, 2026; pipeline 44, February 16, 2026; pipeline 45, February 13, 2026; pipeline 46, February 12, 2026 | Supports mole cricket discovery, millipede persistence, long-lived mycelium, and nitrogen-fixing plant context. Newer May 3 mole-cricket/grass-stress observation wins for current state. |
| Mangrove Forest | Pipeline 57, January 29, 2026; pipeline 66, December 11, 2025; plus newer observations | Supports invasive-plant biomass/nutrient handling and microclimate context. Newer April 22 cockroach second-generation observation wins for current ecology. |
| Marine Shore | Pipeline 349, April 29, 2026; pipeline 348, April 28, 2026 | Supports Eastern Melampus nutrient-transport framing, grass overgrowth, and field-trip species additions. Newer May 2 Gulf marsh crab herbivory observation wins where details conflict. |
| Seagrass Meadow | Pipeline 353, May 7, 2026; pipeline 352, May 6, 2026; pipeline 351, May 4, 2026 | Newest evidence adds turtle grass, manatee grass, and green feather algae as producer-competition additions; shows Mottled Shore Crab already grazing cyanobacteria; confirms sea urchin intervention remains unresolved. These records update the earlier May 3 observation-only interpretation. |

Pipeline caution:

- Do not treat a published video hook as resolved just because it is public.
- Do not reuse older public language like "thrived" or "balance" as current scientific status when newer observations or current species records are more cautious.
- Pipeline descriptions are public-context evidence, not a substitute for current observations or species/biome link cleanup.

## Per-Biome Fill Plan

### Freshwater Lake

Current structured evidence:

- Latest observation checked: May 3, 2026, observation 250.
- Latest useful pipeline context checked: May 1, 2026, pipeline 350, "The ghost shrimp had offspring"; April 17, 2026, pipeline 338, "My Lake Went Completely Opaque. So I Removed the Fish."
- Recent evidence includes seed shrimp absence from visible checks, continued water clearing, increased amphipod grazing, surface biofilm increase after fish removal, unresolved ghost shrimp zoea outcome, and Moina reproduction signal.
- Active story threads include Daphnia establishment, ghost shrimp status, ostracod decline, lake post-seal state, apple snail hatchling, water beetle ID/establishment, and Moina reproduction.
- Active public loops include Daphnia establishment, Mesostoma predation pressure, ghost shrimp establishment, food-web clearing without mechanical intervention, and crayfish/Mesostoma dynamics.

Fill now:

| Field | Draft value / direction | Confidence |
|---|---|---|
| `habitat_typology` | Fully aquatic freshwater biome. | Confirmed |
| `interface_tag` | Freshwater / Aquatic | Confirmed |
| `hero_description` | A still freshwater habitat where submerged plants, suspended algae, microcrustaceans, shrimp, snails, and crayfish are reorganizing after fish removal. | Likely |
| `habitat_theme_goal` | Freshwater nutrient processor and water-column food-web engine linking algae, microcrustaceans, grazers, shrimp, snails, and crayfish. | Likely |
| `substrate_profile` | Quartz lake sand with organic detritus and developing aerobic/anaerobic zones. | Likely |
| `primary_producers` | Tapegrass, Amazon sword, sagittaria, suspended algae, biofilm, and temporary macroalgae. | Likely |
| `nutrient_export_system` | Plant uptake, algae/biofilm grazing, detritus processing, and crayfish/snail/shrimp activity. | Likely |
| `cleanup_crew_profile` | Crayfish, snails, amphipods, shrimp, copepods, seed shrimp where still present, and other small detritivores/grazers. | Possible |
| `current_stability_status` | Active post-fish-removal transition; water clarity is improving, but microcrustacean persistence and predator pressure remain unresolved. | Likely |
| `primary_maintenance_focus` | Track water clarity, surface biofilm, microcrustacean persistence, ghost shrimp recruitment, Mesostoma pressure, and dissolved oxygen risk. Pipeline 350 can support "offspring observed, establishment unresolved." | Likely |
| `ecological_notes` | The lake is the clearest candidate for a public "food web rebuilding" panel after fish removal, but do not call it stable or self-sustaining. | Confirmed |
| `species_diversity_notes` | Strong observed diversity, but species membership links need cleanup before the website treats the roster as complete. | Confirmed |

Ideal later:

- Dissolved oxygen, pH, temperature, alkalinity/calcium, nutrient concentration, PAR.
- Updated `last_observed` after approved write.
- Complete species-to-biome links.

Do not claim publicly yet:

- Ghost shrimp are established.
- Daphnia/Moina have created a stable self-sustaining clearing loop.
- Seed shrimp are extirpated.
- The lake is stable or balanced.

### Lakeshore

Current structured evidence:

- Latest observation checked: May 2, 2026, observation 248.
- Latest useful pipeline context checked: December 15, 2025, pipeline 64, rain distribution; November 18, 2025, pipeline 75, gravity-triggered rain. Newer 2026 observations should drive current ecology.
- Recent evidence includes amber snail egg hatching, amber snail predation, ridgeback grasshopper feeding on Ludwigia, crypt ant alates, and amber snail eggs.
- Active story threads include baby crayfish lakeshore hatch survival, Lakeshore ongoing activity, amber snail establishment, and crypt ant reproductive stage.
- Active public loop: unidentified beetle larva metamorphosis.

Fill now:

| Field | Draft value / direction | Confidence |
|---|---|---|
| `habitat_typology` | Transitional freshwater shoreline / wetland edge. | Confirmed |
| `interface_tag` | Freshwater / Shoreline | Confirmed |
| `hero_description` | A wet edge habitat where water, roots, glass, mud, and plant cover let aquatic and terrestrial organisms overlap. | Likely |
| `habitat_theme_goal` | Transition corridor, nursery zone, and rain-distribution receiving edge between the lake and lowland meadow. | Likely |
| `substrate_profile` | Quartz sand base with soil and organic plant matter across a moisture gradient. | Likely |
| `primary_producers` | Ludwigia, dollarweed, shoreline grasses/sedges, algae/biofilm, and other broadleaf cover. | Possible |
| `nutrient_export_system` | Dense plant growth, shoreline grazing, detritus breakdown, and cross-biome movement. | Likely |
| `cleanup_crew_profile` | Amber snails, amphipods, snails, crayfish overlap, isopods, millipedes, and other detritivores. | Possible |
| `current_stability_status` | Active transition corridor with confirmed reproduction signals in amber snails and crypt ants, but establishment outcomes remain under observation. | Likely |
| `primary_maintenance_focus` | Track amber snail recruitment/predation, crypt ant reproductive activity, shoreline grazing, and plant cover. | Likely |
| `ecological_notes` | Best public framing is "the living shoreline between water and land," not a standalone stable endpoint. | Confirmed |
| `species_diversity_notes` | Many terrestrial and aquatic-overlap species use this biome, but structured links need cleanup before public roster confidence is high. | Confirmed |

Ideal later:

- Humidity gradient, moisture profile, temperature, pH for wet zones, species-link cleanup.

Do not claim publicly yet:

- Amber snails are established long-term.
- Crypt ants successfully completed a nuptial flight.
- The shoreline has a stable detritivore balance.

### Lowland Meadow

Current structured evidence:

- Latest observation checked: May 3, 2026, observation 251.
- Latest useful pipeline context checked: March 4, 2026, pipeline 31, mole cricket discovery; February 16, 2026, pipeline 44, millipede persistence; February 13, 2026, pipeline 45, long-lived mycelium; February 12, 2026, pipeline 46, nitrogen-fixing plant context.
- Recent evidence includes mole cricket tunneling and grass decline, amber snail movement into the drier zone, ridgeback grasshopper droppings supporting detritivores, grasshopper persistence/molting, and Florida woods cockroach additions.
- Active story threads include ridgeback grasshopper, Lowland Meadow activity, mole cricket, and armyworm trial.
- Active public loops include mole cricket establishment and smoky oak millipede reproduction.

Fill now:

| Field | Draft value / direction | Confidence |
|---|---|---|
| `habitat_typology` | Terrestrial freshwater-linked meadow. | Confirmed |
| `interface_tag` | Terrestrial / Meadow | Confirmed |
| `hero_description` | A rain-fed meadow where grasses, soil organisms, herbivores, and detritivores turn plant growth into the system's upland nutrient flow. | Likely |
| `habitat_theme_goal` | Upland nutrient generator, detritus processor, and terrestrial food-web habitat. | Likely |
| `substrate_profile` | Dense organic-rich soil with moisture retention and seed-bank-driven succession. | Likely |
| `primary_producers` | Grasses, Mexican primrose, broadleaf plants, possible nitrogen-fixing legume, moss, mycelium-associated decomposition context, algae/cyanobacteria where present. | Possible |
| `nutrient_export_system` | Plant growth, herbivore frass, isopod/millipede/springtail processing, and downhill hydrologic movement. | Likely |
| `cleanup_crew_profile` | Isopods, millipedes, springtails, cockroaches, worms, and other terrestrial detritivores. | Likely |
| `current_stability_status` | Active terrestrial succession with grass stress and mole cricket activity under observation. | Likely |
| `primary_maintenance_focus` | Track grass decline, mole cricket tunneling/root feeding, detritivore response, and plant recovery/succession. | Likely |
| `ecological_notes` | Public framing can emphasize soil food-web activity and succession, with grass stress treated as an active watch point. | Confirmed |
| `species_diversity_notes` | High terrestrial diversity is documented, but many meadow species are not yet linked in `species_to_biomes`. | Confirmed |

Ideal later:

- Soil moisture, humidity, temperature gradient, PAR/light, plant cover estimates, species-link cleanup.

Do not claim publicly yet:

- Mole cricket is established.
- Meadow grass decline has one confirmed cause.
- Millipedes are breeding.
- The smoky oak millipede is currently thriving based only on older pipeline language; current public wording should be more cautious.

### Mangrove Forest

Current structured evidence:

- Latest observation checked: April 22, 2026, observation 220.
- Latest useful pipeline context checked: January 29, 2026, pipeline 57, invasive-plant biomass/nutrient handling; December 11, 2025, pipeline 66, microclimate context.
- Recent evidence includes juvenile Florida woods cockroach on a mangrove branch, ghost ant reappearance, field cricket persistence, terrestrial worm appearance, and rain-event observations.
- Active story threads include Mangrove Forest ongoing activity and Florida woods cockroach second generation.
- No active biome open loops were returned in the live check.

Fill now:

| Field | Draft value / direction | Confidence |
|---|---|---|
| `habitat_typology` | Salt-influenced terrestrial mangrove habitat. | Confirmed |
| `interface_tag` | Brackish / Mangrove | Confirmed |
| `hero_description` | A salt-influenced forest zone where mangrove roots, leaf litter, crabs, and terrestrial detritivores build the boundary between freshwater and marine sides. | Likely |
| `habitat_theme_goal` | Soil-building, leaf-litter processing, and a living chemical boundary between freshwater and marine systems. | Likely |
| `substrate_profile` | Quartz sand mixed with crushed shell and accumulating organic material. | Likely |
| `primary_producers` | Black mangrove, white mangrove, coinvine, Brazilian pepper, and associated surface growth. | Likely |
| `nutrient_export_system` | Leaf litter, detritivore processing, soil organic accumulation, and crab/roach activity. | Likely |
| `cleanup_crew_profile` | Florida woods cockroaches, millipedes, isopods, crabs, worms, and other terrestrial detritivores where confirmed. | Possible |
| `current_stability_status` | Persistent mangrove habitat with active cockroach second-generation tracking; broader population states remain uncertain. | Likely |
| `primary_maintenance_focus` | Track Florida woods cockroach recruitment, leaf-litter processing, soil building, mangrove health, microclimate behavior, and invasive Brazilian pepper status. | Likely |
| `ecological_notes` | Good public framing is "the salt-tolerant forest boundary," with caution around population outcomes. | Confirmed |
| `species_diversity_notes` | The current junction links underrepresent likely mangrove species membership. | Confirmed |

Ideal later:

- Salinity/salt drift, soil moisture, humidity, temperature, plant condition, species-link cleanup.

Do not claim publicly yet:

- Florida woods cockroaches have a stable second generation.
- The mangrove forest is a proven chemical firewall.
- Brazilian pepper removal plan is an approved action unless routed through experiment/background workflow.

### Marine Shore

Current structured evidence:

- Latest observation checked: May 2, 2026, observation 243.
- Latest useful pipeline context checked: April 29, 2026, pipeline 349, Eastern Melampus nutrient transport; April 28, 2026, pipeline 348, grass overgrowth and field-trip species additions.
- Recent evidence includes Gulf marsh crab herbivory and opportunistic feeding, ladder hornsnail introduction, Eastern Melampus introduction, and Marine Shore field-trip species additions.
- Active story threads include Marine Shore activity, Gulf marsh crab establishment, ladder hornsnail establishment, and Eastern Melampus establishment.
- Active public loop: Eastern Melampus establishment/reproduction.
- Marine Shore already has `interface_tag` and `hero_description` filled in Supabase.

Fill now:

| Field | Draft value / direction | Confidence |
|---|---|---|
| `habitat_typology` | Brackish/marine shoreline transition. | Confirmed |
| `interface_tag` | Existing value: Marine/Saltwater. Consider "Brackish / Shoreline" if Web wants more precision. | Confirmed |
| `hero_description` | Existing value is usable. Could revise later to include active crab/snail shoreline function. | Confirmed |
| `habitat_theme_goal` | Shoreline grazing, burrow-mediated sediment mixing, detritus processing, nutrient movement across the waterline, and freshwater/marine edge dynamics. | Likely |
| `substrate_profile` | Quartz beach sand, crushed shell/limestone, sloped shoreline, and erosion-prone edge. | Likely |
| `primary_producers` | Beach grasses, silverhead, red mangrove, shoal grass overlap, algae/biofilm, and shoreline plants. | Possible |
| `nutrient_export_system` | Herbivory, detritus processing, shoreline grazing, crab burrowing, Melampus-style waterline nutrient transport where confirmed, and exchange with the seagrass meadow. | Likely |
| `cleanup_crew_profile` | Fiddler crabs, Gulf marsh crab, hermit crabs, hornsnails, Melampus, lawn shrimp where present, ragworms, and other detritivores. | Possible |
| `current_stability_status` | Active shoreline with strong new grazing/detritus-processing signals and ongoing erosion/sediment movement. | Likely |
| `primary_maintenance_focus` | Track shoreline erosion, Gulf marsh crab herbivory, Eastern Melampus reproduction, hornsnail persistence, and burrow effects. | Likely |
| `ecological_notes` | This biome can publicly show active mechanical and biological shoreline reshaping. Keep establishment claims qualified. | Confirmed |
| `species_diversity_notes` | Several recent Marine Shore species are not yet linked in `species_to_biomes`; public roster should wait on cleanup. | Confirmed |

Ideal later:

- Salinity/specific gravity, pH, temperature, erosion tracking, shoreline profile photos, species-link cleanup.

Do not claim publicly yet:

- Eastern Melampus or ladder hornsnails are established.
- Gulf marsh crab has solved grass abundance.
- Shoreline erosion is stable or controlled.

### Seagrass Meadow

Current structured evidence:

- Latest observation checked: May 3, 2026, observation 249.
- Latest useful pipeline context checked: May 7, 2026, pipeline 353, producer additions; May 6, 2026, pipeline 352, Mottled Shore Crab grazing; May 4, 2026, pipeline 351, sea urchin intervention.
- Recent evidence includes Graceful redweed lower-cluster decline, variegated sea urchin feeding, revised sea urchin survival status, slipper snail generational cycling hypothesis, and amphipod/acclimation observations.
- Active story threads include macroalgae vs shoalgrass succession, scorched mussel establishment, variegated sea urchin impact, and slipper snail calcium cycling.
- Active public loops include shoalgrass vs macroalgae, macroalgae self-correction/urchin role, slipper snail self-regulation, urchin survival/grazing, and green feather algae spread.
- Biome chronicle on May 7, 2026: producer diversity added to Seagrass Meadow.

Fill now:

| Field | Draft value / direction | Confidence |
|---|---|---|
| `habitat_typology` | Fully aquatic marine seagrass/macroalgae meadow. | Confirmed |
| `interface_tag` | Marine / Seagrass | Confirmed |
| `hero_description` | A marine meadow where seagrasses, macroalgae, grazers, filter feeders, worms, crabs, and small invertebrates compete over light, nutrients, and detritus. | Likely |
| `habitat_theme_goal` | Marine nutrient processor, larval production engine, grazing web, and deep-substrate detritus reactor. | Likely |
| `substrate_profile` | Deep marine sand with crushed shell, benthic detritus, and likely anaerobic zones at depth. | Likely |
| `primary_producers` | Shoal grass, turtle grass, manatee grass, Graceful redweed, green feather algae, macroalgae, cyanobacteria/algae, and recently added producer diversity. | Likely |
| `nutrient_export_system` | Seagrass and algae growth, producer competition, crab/urchin grazing, filter feeding, detritus processing, shell/calcium cycling, and benthic decomposition. | Likely |
| `cleanup_crew_profile` | Amphipods, slipper snails, ragworms, spaghetti worms, Mottled Shore Crab, other crabs, nerites, hermits, urchin, mussels/clams where present, and filter feeders. | Possible |
| `current_stability_status` | High-activity marine succession with macroalgae pressure, new producer-competition additions, observed crab/urchin grazing, and unresolved long-term producer balance. | Likely |
| `primary_maintenance_focus` | Track turtle grass/manatee grass/green feather algae establishment, macroalgae trajectory, shoalgrass light access, crab and sea urchin grazing, slipper snail turnover, detritus accumulation, and dissolved oxygen risk. | Likely |
| `ecological_notes` | This is the strongest biome for showing succession and unresolved ecological tension; newest pipeline evidence emphasizes producer competition and grazer response, but avoid "balanced reef/meadow" language. | Confirmed |
| `species_diversity_notes` | Biodiversity is high, but many seagrass organisms are not yet represented in the junction table. | Confirmed |

Ideal later:

- Salinity/specific gravity, dissolved oxygen, pH, alkalinity/calcium, PAR, temperature, nutrient levels, benthic detritus tracking, species-link cleanup.

Do not claim publicly yet:

- The sea urchin intervention solved macroalgae.
- Shoalgrass has reclaimed the meadow.
- Slipper snails are confirmed self-regulating.
- The meadow is stable.
- Turtle grass, manatee grass, or green feather algae are established long-term.

## Recommended First Supabase Update Batch

After review, the first approved database update should target low-risk display and interpretation fields only:

- `habitat_typology`
- `interface_tag`
- `hero_description`
- `habitat_theme_goal`
- `substrate_profile`
- `primary_producers`
- `nutrient_export_system`
- `cleanup_crew_profile`
- `current_stability_status`
- `primary_maintenance_focus`
- `ecological_notes`
- `species_diversity_notes`
- `maintenance_notes`

Do not update measurement fields in this batch.

## Recommended Second Batch

Clean up structured relationships before the website leans on species rosters:

- Audit `species_to_biomes` against `species.main_biome`.
- Decide whether `species.main_biome` remains a display/search field or becomes secondary to the junction table.
- Link recently introduced and currently tracked organisms to the correct biome records.
- Keep extirpated/removed species visible only when the website intentionally shows historical membership.

## Recommended Third Batch

Coordinate with Hardware/Web/App before adding ideal tracking fields or measurements:

- `profile_last_verified_at`
- `profile_uncertainty_label`
- `public_claim_status`
- Telemetry-derived temperature/humidity fields.
- Water chemistry fields if measurement workflow exists.
- Public profile components that depend on live data freshness.

## Website Implementation Guidance

For the first website pass:

- Use `biomes` for the profile header, description, habitat/ecological summary, and caution/status fields.
- Use relationship queries for species, observations, open loops, story threads, and chronicles.
- Show measurement gaps as "not yet measured" rather than hiding them if the page is meant to teach how the system is monitored.
- Use public-safe status wording such as "active transition", "under observation", "rebuilding food web", "active shoreline", or "succession in progress".
- Avoid "stable", "balanced", "self-sustaining", and "established" unless the specific claim has evidence and an uncertainty label.

## Open Questions

- Should public biome pages show internal story threads, or should those remain App/Content-only until they become public open loops?
- Should `last_observed` be updated directly from latest observation date, or should it remain editorial/manual?
- Should extirpated and removed species appear on biome pages as historical inhabitants, or only in chronicles/species pages?
- Does Web want public labels to differ from record names, especially `Lowland Meadow` versus legacy `Grassland`?
- Should measurement gaps be shown on the public page, the admin surface, or both?
