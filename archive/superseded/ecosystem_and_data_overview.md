---
id: ecosystem_and_data
title: 3. Ecosystem & Data
domain: ecosystem_and_data
last_updated: 2026-05-01
tags: [ecology, biome-data, species, biosphere, food-web]
---
# 3. Ecosystem & Data

## Scope
- Captures the biological architecture of the biosphere, including biome composition, ecological roles, and system-level interactions.
- Provides the ecological reference layer needed to support species records, system interpretation, and educational storytelling.

## Current State
- The Supabase species database is confirmed live as of 2026-04-02, with 23 audited operational species. **170 total species records in DB as of 2026-04-30** (169 as of 2026-04-27, plus Dampwood termite id=179 marked `display_status='considered'` after being assessed but rejected for miniBIOTA integration). Latest introduced-in-system species remains Variegated Sea Urchin id=178, added 2026-04-26, Seagrass Meadow. A new **Freshwater Cyanobacteria** record (id=168) was added 2026-04-15, splitting the previously single cyanobacteria entry into saltwater (id=123, Marine Shore + Seagrass Meadow) and freshwater (id=168, Freshwater Lake + Lakeshore) records. The single **Freshwater Copepod** record (id=65) was split on 2026-04-16 into three records: **Freshwater Copepod (Calanoida)** (id=65, Freshwater Lake), **Freshwater Copepod (Cyclopoida)** (id=169, Freshwater Lake), and **Marine Copepod** (id=170, Seagrass Meadow + Marine Shore). Marine record remains at Class Copepoda pending order-level ID.
- The active ecosystem is dominated by the **Saltwater / Seagrass Meadow** realm, which holds the majority of current species. This is the present operational reality, not a planned future state.
- The full species audit was completed on 2026-03-31 across all 23 records.
- **Unknown Terrestrial Isopod** (id=173, Suborder Oniscidea) added 2026-04-21 — second terrestrial isopod species in the system, distinct from Woodlouse (id=46). Present in lowland meadow; species-level ID pending.
- The Freshwater realm has been significantly reactivated as of April 2026. Key lake biome developments as of 2026-04-21:
  - **Flagfish** (*Jordanella floridae*, id=24) — removed from the lake biome on April 5, 2026 and moved to an outdoor tank. One male had been the lake's only fish, but its predation on Daphnia and other microcrustaceans was keeping the middle food-web layer from forming. The removal was a deliberate management decision, not a mortality event.
  - **Daphnia sp.** (likely ambigua, id=164) introduced 2026-04-08 — present and thriving alongside copepods (Calanoida id=65, Cyclopoida id=169). Lake water clearing as of 2026-04-13. Microcrustaceans functioning as the intermediary food web layer. 7 open loops tracking lake food web outcome.
  - **Ghost Shrimp** (*Palaemon paludosus*, id=67) — at least four adults were confirmed in the lake biome on April 11, 2026, though visibility limited the full count. **Zoea were first observed on April 19, 2026, confirming reproduction. They remained visible for three nights and appeared to grow, but were no longer visible by May 1, 2026. Juvenile recruitment remains unconfirmed. Story thread 21 and open loop 3 continue tracking outcome.**
  - **Ostracods** (id=69) — second introduction completed 2026-04-16 (hundreds of individuals, full acclimation protocol). Survived overnight as of 2026-04-17 but numbers noticeably reduced. Cause unclear: residual acclimation shock vs. active crayfish sediment predation. Population still present; trajectory under observation.
  - **Water beetles** (unidentified, multiple species) — approximately a dozen individuals introduced to lake biome 2026-04-16 alongside ostracod reintroduction. Species not yet identified; task open (task id=110).
  - **Mesostoma ehrenbergii** (id=167) — present in-system. Predatory threat to microcrustaceans; outcome unresolved.
  - **Malaysian trumpet snail** (id=79) — strong hatchling emergence observed 2026-04-17; 4 individuals counted on front glass alone, indicating successful reproduction and growing population.
  - **Apple Snail** (*Pomacea* sp., id=73) — at least one small individual persisting in lake biome. Confirmation pending.
  - **Leopard Ramshorn Snail** (*Planorbella duryi*, id=165) — 6 individuals introduced 2026-04-08. **Freshly hatched ramshorn snails observed on front glass 2026-04-21 (at least 2 individuals plus 1 other juvenile) — first visible hatchlings, attributed to flagfish removal reducing predation pressure.**
  - **Freshwater Amphipod** (id=66) — behavioral shift observed 2026-04-19: now openly swimming in water column during the day. Previously hidden under strong flagfish predation pressure; removal of flagfish has expanded their visible functional presence.
  - **Crayfish** (id=25) — new wave of hatchlings observed distributed throughout lake substrate 2026-04-16, indicating continued reproduction. Also observed consuming sagittaria from the root structure upward 2026-04-17, initiating detritivore cascades as leaves die and decompose.
  - **Amber Snail** (*Succinea* sp., id=172) — collected from drying wetland 2026-04-17; approximately 75 individuals introduced to lakeshore biome. **Eggs observed 2026-04-19 (gelatinous clusters on glass) — reproduction confirmed within lakeshore biome. First individual confirmed in lowland meadow 2026-04-21 — territory expanding beyond lakeshore.** Species-level ID pending (task id=111). Story thread 19 tracking establishment.
- **Lowland Meadow** active developments: **Florida woods cockroach** (id=26) population updated to 4 individuals as of 2026-04-12. **Ridgeback Sand Grasshopper** (id=157) — both introduced individuals confirmed molting and behaving as settled residents as of 2026-04-14; droppings observed in substantial quantities 2026-04-19, indicating active feeding and thriving conditions; isopods (including id=173) consuming droppings, integrating grasshopper waste into the detrital food web. **Armyworm** (id=153) — ongoing periodic introduction trial; 2 added 2026-04-12, testing whether the species can establish given abundant grass.
- **Lakeshore** active developments: **Common Crypt Ant** (id=47, *Hypoponera opacior*) — winged individuals (alates) observed 2026-04-24, indicating the 3.5-year-old colony is entering its reproductive phase; nuptial flight anticipated. Story thread 28 tracking. **Ridgeback Sand Grasshopper** (id=157) — observed feeding on Ludwigia in lakeshore biome 2026-04-26; first documented instance of this species consuming Ludwigia within the system. Species confirmed ranging between lakeshore and lowland meadow biomes. Thread 4 updated to reflect multi-biome range.
- **Seagrass Meadow**: macroalgae (id=32) expanding across surface at far end of tank as of 2026-04-13, forming a dominant surface layer. Cyanobacteria (id=123) beginning to recede. **Major amphipod (Marine Scud, id=36) population surge observed 2026-04-19 — likely thousands of individuals clustered in benthic zone; potential grazing pressure on macroalgae. Loops 8 and 9 advanced. Mottled Shore Crab (id=18) — 2 individuals approaching 2-year tenure; functioning primarily as herbivores.** Potential light competition with seagrass; long-term balance unknown. **Two variegated sea urchins** (*Lytechinus variegatus*, id=178) were introduced 2026-04-26 to address macroalgae dominance and process shoal grass detritus. Both showed severe lethargy and initially appeared dead or near death by 2026-04-28, but one individual was confirmed alive and active on 2026-04-29. The survivor is feeding on Graceful redweed, keeping the macroalgae-impact question active. Story thread 27 tracking establishment and macroalgae impact. Loop 9 remains open and advancing.
- **Marine Shore** active developments as of 2026-04-24 (from Spring Hill, FL field trip 2026-04-22):
  - **Gulf marsh crab** (*Sesarma schubarti*, id=174) — male introduced 2026-04-22 from brackish tidal ditch. Primarily herbivorous; feeds on cordgrass, seashore paspalum, silverhead, and mangrove detritus. Retreated to cover post-introduction. Will coexist with fiddler crabs. Story thread 22 tracking establishment. **2026-04-26 updates:** confirmed present after 2-day absence; observed feeding on detached fiddler crab leg (opportunistic animal material — broader diet than expected); separately confirmed actively grasping and consuming live grass blades. Herbivory and opportunistic omnivory both documented.
  - **Ladder Hornsnail** (*Cerithidea scalariformis*, id=175) — introduced 2026-04-23. Semi-aquatic, shoreline-adjacent niche. Story thread 23 tracking establishment.
  - **Eastern Melampus** (*Melampus bidentatus*, id=176) — introduced 2026-04-23. Immediately observed feeding on dead grass detritus — strong establishment signal. Story thread 24 tracking.
  - **Lawn shrimp** (id=141) — reintroduced 2026-04-22. Prior attempt failed due to insufficient detritus; current organic material levels may now support establishment.
  - **Scorched Mussels** (id=101, 3 individuals) + unidentified aquatic amphipods — collected from same tidal ditch, drip-acclimating for Seagrass Meadow as of 2026-04-22. Story thread 26 tracking mussel establishment.
- **Mangrove Forest** active developments as of 2026-04-24:
  - **Florida woods cockroach** (id=26) — juvenile observed 2026-04-22 on mangrove branch, indicating second generation emerging within miniBIOTA. Second individual found deceased in red house spider web — active predation confirmed. Population status Vulnerable. Story thread 25 tracking whether this generation establishes.
- **Freshwater Lake** clarification update as of 2026-04-23:
  - Distinct clearer band now visible at top of water column, separating from turbid water below. Upper region dominated by protozoans feeding on algae — succession wave progressing downward. System transitioning toward clearer water. Loop 1 (Daphnia clearing the lake) advancing. Loops 4 and 2 also linked to recent observations.
  - **Amber snails** (id=172) — at least 2 individuals migrated from lakeshore into lake biome 2026-04-23, feeding on algae above waterline.
  - **Seed shrimp** (id=69) — at least one individual persisting in lake despite extreme predation pressure; hundreds disappear within a day of each introduction.
- Prior freshwater extinctions remain on record: **Asian Clam** (*Corbicula fluminea*) — Extirpated/Locally Extinct, last observation 2025-11-02. **Harvestman** (*Hadrobunus grandis*, Terrestrial), last seen 2025-10-04.
- All 23 audited species have `ecological_role`, `trophic_level`, and `feeding_method` documented.

## Key Facts
- miniBIOTA is structured as an interconnected set of freshwater, terrestrial-transition, and marine-adjacent biomes with shared hydrology and atmospheric routing.
- The ecological design emphasizes internal nutrient cycling, passive processes, biological food webs, and stability without routine filtration or external feeding.
- Two confirmed local extinctions are on record.
- Planned future complexity includes estuary behavior and tighter ecological architecture rather than a loosely emergent mixed-origin system.

## Priorities
- ✅ `biome_profiles.md` updated 2026-04-21 to reflect lake reactivation, seagrass amphipod surge, amber snail introduction and spread, ramshorn hatchlings, and grasshopper/isopod detrital interaction.
- Separate confirmed current-state ecology from planned future-state ecology so downstream documents are not forced to infer intent.
- Keep downstream notes and exports synchronized with the completed 23-species audit.
- ✅ `observation_loop_links` and `observation_thread_links` backfill complete — all 62 linkable observations from the 60-day window linked as of 2026-04-16. One intentional skip: obs 109 (too vague). New observations must be linked at logging time going forward.
- ✅ 14 new observations logged 2026-04-24 (ids 214–227, dates 2026-04-22/23) — all linked to threads and loops at log time. 5 new story threads added (ids 22–26).
- ✅ 5 new observations logged 2026-04-27 (ids 228–232, dates 2026-04-24/26) — all linked to threads and loops at log time. 2 new story threads (ids 27–28). New species: Variegated Sea Urchin id=178. Species count corrected to 169 (was incorrectly listed as 176; that was max ID, not row count).
- ✅ 5 new observations logged 2026-04-30 (ids 235–239, dates 2026-04-27/29) — all linked to story threads, and relevant sea urchin/Gulf marsh crab observations linked to loops 9 and 15. Sea urchin mortality assumption corrected across observation 234, thread 27, and related link notes. Dampwood termite id=179 added as `display_status='considered'` after being assessed and rejected for miniBIOTA integration. Total: **29 active threads, 239 observations, 170 species records**.

## Risks / Gaps
- The vault previously described the saltwater system as a planned future state. That framing was incorrect — it is the dominant current operational realm.
- `biome_profiles.md` partially updated as of 2026-04-21 but may still lag on some details — check Supabase observations for current state.
- Some downstream notes may still reference the pre-audit 19-species count.
- Mesostoma ehrenbergii presence in lake is an unresolved risk — predatory on Daphnia and ostracods; outcome unknown. Daphnia currently thriving and clearing water, but Mesostoma threat persists.
- Ostracod population recovering from second introduction but declining — crayfish predation vs. acclimation shock unresolved; needs continued monitoring.
- Water beetle species (introduced 2026-04-16) not yet identified — task open (id=110).
- Amber snail species ID pending (logged as *Succinea* sp.) — task open (id=111).
- Unknown Terrestrial Isopod (id=173) species-level ID pending.
- Unidentified aquatic amphipods (collected 2026-04-22, brackish tidal ditch) — drip-acclimating for Seagrass Meadow, species not yet confirmed. Task open.
- Gulf marsh crab, Ladder Hornsnail, Eastern Melampus (all introduced 2026-04-22/23) — establishment unconfirmed; story threads 22–24 tracking.
- Apple snail presence in lake still unconfirmed — continued monitoring required.
- Ghost shrimp zoea were first observed on April 19, 2026, confirming reproduction. Survival to the juvenile stage and second-generation establishment remain unresolved after the May 1, 2026 follow-up observation (story thread 21, open loop 3).
- Amber snail in lowland meadow (first confirmed 2026-04-21) — long-term persistence in drier terrestrial environment unresolved.
- Macroalgae dominance shift in seagrass meadow is unresolved — amphipod surge and the surviving variegated sea urchin may affect the trajectory, but outcome remains unknown.

## Files In This Folder
- `biome_profiles.md` — detailed profiles for all 6 biomes (substrate, plants, animals, role)
- `biogeochemical_cycles.md` — water, nitrogen, carbon, calcium, salinity cycles and nutrient compression risks
- `instabilities_and_risks.md` — current ecological instabilities and measurement gaps


## Vault Sync Status
- Last verified: —
- Known divergences: none noted
- Next sync check: flag during relevant domain session
