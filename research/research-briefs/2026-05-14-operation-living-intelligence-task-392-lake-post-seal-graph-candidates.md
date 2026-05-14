---
id: operation_living_intelligence_task_392_lake_post_seal_graph_candidates_2026_05_14
title: Operation Living Intelligence Task 392 Lake Post-Seal Graph-Candidate Relationships
type: research_planning_brief
status: complete
last_updated: 2026-05-14
for_agent: Research, App, Company, Content
tags: [research-brief, operation-living-intelligence, task-392, graph-candidates, living-atlas, pipeline-338, chronicle-30, lake-post-seal]
---
# Research Brief: Operation Living Intelligence Task 392 Lake Post-Seal Graph-Candidate Relationships

## Audience

Intended downstream agent or use: docs-only Research planning artifact that converts the bounded Lake Post-Seal Living Atlas packet into graph-candidate nodes and relationships using the task `391` ontology.

This artifact is candidate/derived only. It does not approve Supabase writes, graph imports, graph data creation, App behavior changes, Content writes, Web changes, media records, species edits, observation edits, chronicle edits, subject-link edits, open-loop edits, or Planner task closure.

## Plain-Language Summary

The Lake Post-Seal packet can be represented as a small derived evidence graph centered on pipeline `338`, chronicle `30`, the Freshwater Lake system context, observations `170-178`, six bounded species records, source documents, claim nodes, review gates, and media-reference nodes.

The strongest candidate edges are provenance and evidence edges: source packet -> pipeline/chronicle, chronicle -> subject species, observations -> claims, claims -> review gates, and media references -> caption/publicness gates. The most important blocked edges are the tempting ones: Daphnia establishment, Daphnia clearing the lake, food-web completion, Ghost Shrimp recruitment, Mesostoma public-primary status, and direct observation-to-pipeline/chronicle canonical links.

## Scope Boundary

### In Scope

| Scope item | Candidate boundary |
|---|---|
| Source pipeline | `content_pipeline.id = 338`. |
| Chronicle | `chronicles.id = 30`. |
| Primary system context | Freshwater Lake biome as referenced by pipeline `338` / chronicle `30`; treated as source-context pointer only. |
| Species | Flagfish `24`, Ghost Shrimp `67`, Freshwater amphipods `66`, Daphnia `164`, Mesostoma `167`, Moina `180`. |
| Observations | `170-178` only for this seed pass. |
| Sources | Living Atlas source packet, task `391` ontology brief, Research validation note, Research link/evidence verification note, archived Content project path as source context cited by packet, and packet media references. |
| Relationship status | Candidate/derived only. |

### Out Of Scope For This Artifact

- Later context observations after `178`, even though prior Research notes identify some as useful for later wording context.
- Species outside `24`, `67`, `66`, `164`, `167`, and `180`, including calanoid copepods `65`, cyclopoid copepods `169`, Slough Crayfish `25`, ostracods, Daphnia magna, water scorpion, planaria, snails, duckweed, and blackworms.
- Story threads and open loops as first-class graph nodes. They may be cited as provenance/context from source notes, but this seed does not model them as importable graph nodes.
- Any canonical write, cleanup, public copy, media caption, species-card update, publicness promotion, or App behavior.

## Source Key

Use these source IDs as provenance references in the candidate node and edge tables.

| Source ID | Source type | Path / canonical pointer | Use in this artifact |
|---|---|---|---|
| `SRC391` | Research ontology brief | `M:\miniBIOTA\miniBIOTA_Research\research\research-briefs\2026-05-14-operation-living-intelligence-task-391-graph-ontology.md` | Ontology, node/edge classes, required properties, review gates, exclusions. |
| `SRC_PACKET_338` | Content Living Atlas source packet | `M:\miniBIOTA\miniBIOTA_Content\audits\living_atlas\source_packets\pipeline_338_chronicle_30_lake_post_seal_2026-05-12.md` | Main packet extraction, source IDs, event sequence, proposed-write/media recommendation material. |
| `SRC_RESEARCH_VALIDATION` | Research validation note | `M:\miniBIOTA\miniBIOTA_Research\research\research-briefs\2026-05-13-living-atlas-pipeline-338-research-validation.md` | Confidence labels, publicness tiers, unsafe claims, Research gates. |
| `SRC_LINK_VERIFY` | Research link/evidence verification note | `M:\miniBIOTA\miniBIOTA_Research\research\research-briefs\2026-05-13-living-atlas-pipeline-338-link-evidence-verification.md` | Link integrity, missing-link caveats, media verification, timestamp correction, gated evidence. |
| `SRC_ARCHIVED_PROJECT` | Archived Content project cited by packet | `M:\miniBIOTA\miniBIOTA_Content\video_projects\archive\2026-04_biome_lake-post-seal.md` | Source context cited by `SRC_PACKET_338`; not reread as canonical ecology for this artifact. |
| `SRC_MEDIA_PACKET` | Media references inside packet | Media reference tables inside `SRC_PACKET_338`; verification caveats in `SRC_LINK_VERIFY` | Media candidate nodes, caption warnings, publicness/review gates. |

## Candidate Node List

All nodes below are `derived_only = true`, `source_set_id = oli_392_lake_post_seal_candidate_v1`, and `candidate_status = candidate_not_imported`.

### Seed And Source Nodes

| Node ID | Class | Label | Confidence | Publicness | Review status | Provenance |
|---|---|---|---|---|---|---|
| `SEED_OLI_392_LAKE_POST_SEAL_V1` | `GraphSeed` | Lake Post-Seal graph candidate seed v1 | `Confirmed` for planning scope | `internal_research_note` | Research planning complete; import not approved | `SRC391`; user task `392`. |
| `SP_391_ONTOLOGY` | `SourcePacket` | Task 391 graph ontology brief | `Confirmed` | `internal_research_note` | Reviewed for task 392 use | `SRC391`. |
| `SP_PACKET_338` | `SourcePacket` | Pipeline 338 / chronicle 30 Living Atlas source packet | `Confirmed` for packet identity; `mixed` for ecological interpretations | `internal_research_note` | Verified with caveats | `SRC_PACKET_338`; `SRC_LINK_VERIFY`. |
| `SP_RESEARCH_VALIDATION` | `SourcePacket` | Research validation for pipeline 338 | `Confirmed` | `internal_research_note` | Complete | `SRC_RESEARCH_VALIDATION`. |
| `SP_LINK_VERIFY` | `SourcePacket` | Research link and media verification for pipeline 338 | `Confirmed` | `internal_research_note` | Complete | `SRC_LINK_VERIFY`. |
| `SP_ARCHIVED_PROJECT_REF` | `SourcePacket` | Archived Content project reference | `Confirmed` as cited source context | `internal_research_note` | Cited through packet; not standalone canonical ecology here | `SRC_PACKET_338`; `SRC_ARCHIVED_PROJECT`. |

### Canonical Record Pointer Nodes

| Node ID | Class | Canonical pointer | Label | Confidence | Publicness | Review status | Provenance |
|---|---|---|---|---|---|---|---|
| `REC_PIPELINE_338` | `CanonicalRecord` | `content_pipeline.id = 338` | Published Lake Post-Seal longform source | `Confirmed` | `public_chronicle_safe` as source identity | Verified with caveats; no write approved | `SRC_PACKET_338`; `SRC_RESEARCH_VALIDATION`; `SRC_LINK_VERIFY`. |
| `REC_CHRONICLE_30` | `CanonicalRecord` | `chronicles.id = 30` | Fish removal reopens the lake food web | `Confirmed` | `public_chronicle_safe` as existing chronicle | Verified with caveats; no edit approved | `SRC_PACKET_338`; `SRC_RESEARCH_VALIDATION`; `SRC_LINK_VERIFY`. |
| `REC_BIOME_1` | `CanonicalRecord` | Freshwater Lake biome, referenced as biome `1` in source notes | Freshwater Lake | `Confirmed` as packet context | `public_chronicle_safe` for biome context; no stability claim | Source-context pointer only | `SRC_PACKET_338`; `SRC_LINK_VERIFY`. |

### Species Nodes

| Node ID | Class | Canonical pointer | Public label | Confidence | Publicness | Review status | Provenance |
|---|---|---|---|---|---|---|---|
| `SPC_FLAGFISH_24` | `Species` | `species.id = 24` | Flagfish | `Confirmed` for packet subject | `public_chronicle_safe` / related event | Public-safe only as deliberate removal/management context | `SRC_PACKET_338`; `SRC_RESEARCH_VALIDATION`; `SRC_LINK_VERIFY`. |
| `SPC_GHOST_SHRIMP_67` | `Species` | `species.id = 67` | Ghost Shrimp | `Confirmed` for breeding; `Unknown` for juvenile recruitment | `public_species_candidate` with caution | Research gate required for any recruitment/establishment claim | `SRC_PACKET_338`; `SRC_RESEARCH_VALIDATION`; `SRC_LINK_VERIFY`. |
| `SPC_AMPHIPODS_66` | `Species` | `species.id = 66` | Freshwater amphipods | `Confirmed` as context subject | `related_context_only` | Do not promote from context without review | `SRC_PACKET_338`; `SRC_RESEARCH_VALIDATION`. |
| `SPC_DAPHNIA_164` | `Species` | `species.id = 164` | `Daphnia sp.` | `Confirmed` for broad label; `Needs microscopy` for species-level ID; `Do not claim publicly yet` for establishment | `public_species_candidate` only with visible uncertainty | Research review required before any species-level ID, establishment, reproduction, or public profile promotion | `SRC_PACKET_338`; `SRC_RESEARCH_VALIDATION`; `SRC_LINK_VERIFY`. |
| `SPC_MESOSTOMA_167` | `Species` | `species.id = 167` | Mesostoma | `Confirmed` as record presence; `Likely`/review-gated for public predator-pressure handling | `internal_research_note` by default | Research + Company review required before public context use | `SRC_PACKET_338`; `SRC_RESEARCH_VALIDATION`; `SRC_LINK_VERIFY`. |
| `SPC_MOINA_180` | `Species` | `species.id = 180` | Moina | `Unknown`/context only in this seed | `related_context_only` / `internal_research_note` | Review required before any reproduction, establishment, or public use | `SRC_PACKET_338`; `SRC_RESEARCH_VALIDATION`. |

### Observation Nodes

| Node ID | Class | Canonical pointer | Candidate label | Observed vs inferred | Confidence | Publicness | Review status | Provenance |
|---|---|---|---|---|---|---|---|---|
| `OBS_170` | `Observation` | `observations.id = 170` | Opaque green water / light-energy / food-web bridge rationale | Mixed: observation plus interpretation | `Confirmed` record; interpretation requires caution | `public_chronicle_safe` for opacity context; no causation claim | Review gate for clearing/causation | `SRC_PACKET_338`; `SRC_LINK_VERIFY`. |
| `OBS_171` | `Observation` | `observations.id = 171` | Ludwigia vs tapegrass/sagittaria structure shift | Inferred mechanism from source context | `Likely` | `internal_research_note` / context | Review before public mechanism wording | `SRC_PACKET_338`; `SRC_LINK_VERIFY`. |
| `OBS_172` | `Observation` | `observations.id = 172` | Daphnia magna diagnostic-trial rationale/failure | Observed trial plus inferred constraint | `Likely` for diagnostic interpretation | `internal_research_note` | Do not generalize to all Daphnia publicly | `SRC_PACKET_338`; `SRC_RESEARCH_VALIDATION`; `SRC_LINK_VERIFY`. |
| `OBS_173` | `Observation` | `observations.id = 173` | Failed early field search for Moina/Daphnia | Observed search result | `Confirmed` as packet evidence | `related_context_only` | Do not treat as absence across all sites | `SRC_PACKET_338`; `SRC_LINK_VERIFY`. |
| `OBS_174` | `Observation` | `observations.id = 174` | Duckweed alternative bridge / small test | Planned/test context | `Confirmed` as packet evidence | `raw_evidence_only` | Exclude duckweed from first seed as modeled subject | `SRC_PACKET_338`; `SRC_LINK_VERIFY`. |
| `OBS_175` | `Observation` | `observations.id = 175` | Trail-pool discovery of Daphnia-like microcrustaceans and ostracods | Observed discovery with ID uncertainty | `Possible` to `Likely` for Daphnia-like organisms | `internal_research_note` / `public_species_candidate` only after review | Research ID gate required | `SRC_PACKET_338`; `SRC_RESEARCH_VALIDATION`; `SRC_LINK_VERIFY`. |
| `OBS_176` | `Observation` | `observations.id = 176` | April 8 species composition including Daphnia, ostracods, Mesostoma | Observed composition with ID-sensitive organisms | `Confirmed` record; mixed ID confidence | `internal_research_note` | Research review required for Daphnia/Mesostoma public use | `SRC_PACKET_338`; `SRC_RESEARCH_VALIDATION`; `SRC_LINK_VERIFY`. |
| `OBS_177` | `Observation` | `observations.id = 177` | April 8 introduction of collected organisms and duckweed test | Observed introduction | `Confirmed` | `public_chronicle_safe` for introduction context only | Review gate blocks establishment/outcome claims | `SRC_PACKET_338`; `SRC_RESEARCH_VALIDATION`; `SRC_LINK_VERIFY`. |
| `OBS_178` | `Observation` | `observations.id = 178` | Mesostoma correction and predator-pressure tension | Observed correction plus inferred ecological risk | `Likely` for predator-pressure interpretation | `internal_research_note` | Research + Company review before public use | `SRC_PACKET_338`; `SRC_RESEARCH_VALIDATION`; `SRC_LINK_VERIFY`. |

### Event Nodes

| Node ID | Class | Event type | Label | Observed vs inferred | Confidence | Publicness | Review status | Provenance |
|---|---|---|---|---|---|---|---|---|
| `EVT_PUBLICATION_2026_04_17` | `Event` | `publication_event` | April 17, 2026 publication / chronicle date | Observed canonical source date | `Confirmed` | `public_chronicle_safe` | No date edit implied | `SRC_PACKET_338`; `SRC_RESEARCH_VALIDATION`; `SRC_LINK_VERIFY`. |
| `EVT_ECO_WINDOW_2026_03_12_TO_04_08` | `Event` | `ecological_event` | Proposed ecological event window | Inferred/proposed chronology | `Likely` for interpretation; `Do not claim publicly yet` for structured date change | `internal_research_note` | Company + Content + Research review required | `SRC_PACKET_338`; `SRC_RESEARCH_VALIDATION`; `SRC_LINK_VERIFY`. |
| `EVT_FLAGFISH_REMOVAL_2026_04_05` | `Event` | `management_action` | Flagfish removed from Freshwater Lake | Observed/structured management action | `Confirmed` | `public_chronicle_safe` with careful framing | Do not frame as failure/mortality | `SRC_PACKET_338`; `SRC_RESEARCH_VALIDATION`. |
| `EVT_FIELD_SEARCH_2026_04_08` | `Event` | `observation_event` | April 8 field search for bridge organisms | Observed search event | `Confirmed` | `related_context_only` | Public use should avoid over-specific organism source claims | `SRC_PACKET_338`; `SRC_LINK_VERIFY`. |
| `EVT_INTRODUCTION_2026_04_08` | `Event` | `introduction_event` | April 8 introduction of field-collected sample | Observed introduction | `Confirmed` | `public_chronicle_safe` for introduction only | Blocks establishment/reproduction/clearing outcomes | `SRC_PACKET_338`; `SRC_RESEARCH_VALIDATION`; `SRC_LINK_VERIFY`. |
| `EVT_MESOSTOMA_CORRECTION_2026_04_08` | `Event` | `review_event` | Mesostoma correction and predator-pressure complication | Inferred review event from observation/source | `Likely` | `internal_research_note` | Research + Company review required for public handling | `SRC_PACKET_338`; `SRC_RESEARCH_VALIDATION`; `SRC_LINK_VERIFY`. |

### Claim Nodes

| Node ID | Class | Claim text | Observed vs inferred | Confidence | Publicness | Review status | Do-not-say guardrail | Provenance |
|---|---|---|---|---|---|---|---|---|
| `CLM_SOURCE_IDENTITY` | `Claim` | Pipeline `338` / chronicle `30` is the Lake Post-Seal source pair. | Observed canonical record identity | `Confirmed` | `public_chronicle_safe` | Verified; no write approved | Do not duplicate chronicle or infer new links. | `SRC_PACKET_338`; `SRC_LINK_VERIFY`. |
| `CLM_FOOD_WEB_RESET_FRAME` | `Claim` | The source documents a Freshwater Lake food-web reset after opacity escalated and the flagfish was removed. | Source interpretation over canonical source | `Confirmed` for safe chronicle frame | `public_chronicle_safe` | Safe with caveats | Do not say the food web is complete/stable. | `SRC_RESEARCH_VALIDATION`; `SRC_PACKET_338`. |
| `CLM_FLAGFISH_REMOVED_MANAGEMENT` | `Claim` | Flagfish was deliberately removed as food-web management. | Observed/structured event plus interpretation | `Confirmed` | `public_chronicle_safe` | Safe with wording gate | Do not say failure, death, or wild release. | `SRC_RESEARCH_VALIDATION`; `SRC_PACKET_338`. |
| `CLM_DAPHNIA_INTRODUCED_SP` | `Claim` | Wild-collected `Daphnia sp.` were introduced as a possible algae-to-consumer bridge. | Observed introduction plus cautious ID | `Confirmed` for broad label/introduction | `public_species_candidate` | Research-reviewed boundary; frame cautiously | Do not say `Daphnia ambigua`. | `SRC_RESEARCH_VALIDATION`; `SRC_PACKET_338`. |
| `CLM_DAPHNIA_ESTABLISHMENT_UNRESOLVED` | `Claim` | Daphnia establishment remains unresolved. | Review conclusion from record/open-loop state | `Confirmed` | `public_species_candidate` | Safe and required if Daphnia is surfaced | Do not say Daphnia established. | `SRC_RESEARCH_VALIDATION`; `SRC_LINK_VERIFY`. |
| `CLM_DAPHNIA_SPECIES_ID_BLOCKED` | `Claim` | Species-level Daphnia ID is not public-ready. | Review conclusion | `Needs microscopy` | `blocked_public_use` for species-level ID | Research review required | Do not say `Daphnia ambigua is confirmed`. | `SRC_RESEARCH_VALIDATION`; `SRC391`. |
| `CLM_DAPHNIA_CLEARING_BLOCKED` | `Claim` | Daphnia caused lake clearing. | Inferred causal claim | `Do not claim publicly yet` | `blocked_public_use` | Blocked | Do not say Daphnia cleared the lake. | `SRC_RESEARCH_VALIDATION`; `SRC391`. |
| `CLM_GHOST_SHRIMP_BREEDING_ONLY` | `Claim` | Ghost Shrimp breeding is confirmed, juvenile recruitment unconfirmed. | Observed/structured breeding plus unresolved recruitment | `Confirmed` for breeding; `Unknown` for recruitment | `public_species_candidate` | Safe only with distinction preserved | Do not say established, second generation, or recruitment. | `SRC_RESEARCH_VALIDATION`; `SRC_LINK_VERIFY`. |
| `CLM_MESOSTOMA_PRESSURE_INTERNAL` | `Claim` | Mesostoma is unresolved predator-pressure context for introduced microcrustaceans. | Inferred from observation/source context | `Likely` | `internal_research_note` | Research + Company review before public use | Do not make Mesostoma a primary public subject or claim it ate Daphnia. | `SRC_RESEARCH_VALIDATION`; `SRC_LINK_VERIFY`. |
| `CLM_MOINA_CONTEXT_ONLY` | `Claim` | Moina remains context only in this seed. | Review boundary | `Unknown` for public outcome | `related_context_only` / `internal_research_note` | Review required before public use | Do not claim Moina reproduction/establishment. | `SRC_RESEARCH_VALIDATION`; `SRC391`. |
| `CLM_FOOD_WEB_COMPLETION_BLOCKED` | `Claim` | The lake food web is complete/stable/sustainable. | Overstrong outcome claim | `Do not claim publicly yet` | `blocked_public_use` | Blocked | Do not say complete, stable, balanced, or sustainable. | `SRC_RESEARCH_VALIDATION`; `SRC391`. |
| `CLM_CHRONOLOGY_REVIEW` | `Claim` | The ecological event window likely differs from the chronicle publish date. | Proposed/inferred chronology | `Likely`; structured change `Do not claim publicly yet` | `internal_research_note` | Company + Content + Research review required | Do not silently change chronicle `event_date`. | `SRC_RESEARCH_VALIDATION`; `SRC_PACKET_338`; `SRC_LINK_VERIFY`. |
| `CLM_OBS_DIRECT_LINK_MISSING` | `Claim` | Observations `170-178` are packet-associated, not directly linked by `observations.pipeline_id` or `observations.chronicle_id`. | Link verification finding | `Confirmed` | `internal_research_note` | App/Content review before any link cleanup | Do not represent packet association as canonical direct link. | `SRC_LINK_VERIFY`; `SRC391`. |
| `CLM_MEDIA_APPROVAL_SEPARATE` | `Claim` | Media references are recommendations/candidates, not approved media records or captions. | Review conclusion | `Confirmed` | `internal_research_note` | Separate media approval required | Do not create public captions from this graph. | `SRC_PACKET_338`; `SRC_LINK_VERIFY`. |

### Review Gate Nodes

| Node ID | Class | Trigger | Review owner | Review status | Blocks | Provenance |
|---|---|---|---|---|---|---|
| `GATE_DAPHNIA_ID` | `ReviewGate` | Daphnia species-level ID or ID-sensitive media use | Research | `research_review_required` | `CLM_DAPHNIA_SPECIES_ID_BLOCKED`; Daphnia media captions | `SRC_RESEARCH_VALIDATION`; `SRC391`; `SRC_LINK_VERIFY`. |
| `GATE_DAPHNIA_OUTCOME` | `ReviewGate` | Daphnia establishment, reproduction, durable clearing, or stable function | Research | `blocked` until more evidence | `CLM_DAPHNIA_CLEARING_BLOCKED`; establishment/reproduction claims | `SRC_RESEARCH_VALIDATION`; `SRC391`. |
| `GATE_GHOST_RECRUITMENT` | `ReviewGate` | Ghost Shrimp juvenile recruitment, second generation, self-sustaining population | Research | `research_review_required` | Recruitment/establishment claims and zoea captions beyond breeding | `SRC_RESEARCH_VALIDATION`; `SRC_LINK_VERIFY`. |
| `GATE_MESOSTOMA_PUBLICNESS` | `ReviewGate` | Mesostoma public subject/link/caption use | Research + Company + Content | `research_review_required` | Public-primary or major-impact Mesostoma handling | `SRC_RESEARCH_VALIDATION`; `SRC_LINK_VERIFY`. |
| `GATE_CHRONOLOGY` | `ReviewGate` | Publish date vs ecological event-window modeling | Company + Content + Research | `not_started` | Chronicle date/range edits and public date reinterpretation | `SRC_RESEARCH_VALIDATION`; `SRC_PACKET_338`; `SRC_LINK_VERIFY`. |
| `GATE_MEDIA_CAPTION` | `ReviewGate` | Public media record, caption, species image, or visual proof use | Content + App/Raw Footage + Research | `not_started` | Public media claims and captions | `SRC_MEDIA_PACKET`; `SRC_LINK_VERIFY`. |
| `GATE_DIRECT_LINK_CLEANUP` | `ReviewGate` | Direct observation-to-pipeline/chronicle link cleanup | App + Content + Research | `not_started` | Direct canonical link creation | `SRC_LINK_VERIFY`; `SRC391`. |

### Media Reference Nodes

All media nodes below are packet/media-reference candidates only. They do not create media records, media links, captions, species images, or website assets.

| Node ID | Class | Media pointer | Candidate use | Confidence | Publicness | Review status | Provenance |
|---|---|---|---|---|---|---|---|
| `MED_20260408_082108_JPG` | `Media` | `M:\miniBIOTA\miniBIOTA_Files\8. Raw Footage\Other Photos & Videos\Biomes\Freshwater Lake\20260408_082108.jpg` | Opaque lake still | `Confirmed` file exists; not indexed in `media_assets` per verification | `public_chronicle_safe` candidate | Media approval required | `SRC_MEDIA_PACKET`; `SRC_LINK_VERIFY`. |
| `MED_20260405_121055_MP4` | `Media` | `M:\miniBIOTA\miniBIOTA_Files\8. Raw Footage\Photos & Videos\2026\20260405_121055.mp4`, `00:03-00:19` | Flagfish transfer/retirement | `Confirmed` indexed/path/timestamp | `public_chronicle_safe` candidate | Caption framing review required | `SRC_MEDIA_PACKET`; `SRC_LINK_VERIFY`. |
| `MED_20260405_114948_MP4` | `Media` | `M:\miniBIOTA\miniBIOTA_Files\8. Raw Footage\Photos & Videos\2026\20260405_114948.mp4`, wide frames | Pre-introduction opacity context | `Confirmed` indexed/path/timestamps | `public_chronicle_safe` candidate | Approval required | `SRC_MEDIA_PACKET`; `SRC_LINK_VERIFY`. |
| `MED_20260408_112539_MP4` | `Media` | `M:\miniBIOTA\miniBIOTA_Files\8. Raw Footage\Photos & Videos\2026\20260408_112539.mp4`, `00:00-00:13` | Field-search habitat | `Confirmed` indexed/path/timestamp | `public_chronicle_safe` candidate | Caption must avoid organism-source claim | `SRC_MEDIA_PACKET`; `SRC_LINK_VERIFY`. |
| `MED_20260408_112606_MP4` | `Media` | `M:\miniBIOTA\miniBIOTA_Files\8. Raw Footage\Photos & Videos\2026\20260408_112606.mp4`, `00:02-00:11` | Field sampling process | `Confirmed` indexed/path/timestamp | `public_chronicle_safe` candidate | Caption must avoid target-organism ID | `SRC_MEDIA_PACKET`; `SRC_LINK_VERIFY`. |
| `MED_20260408_114418_MP4` | `Media` | `M:\miniBIOTA\miniBIOTA_Files\8. Raw Footage\Photos & Videos\2026\20260408_114418.mp4`, corrected `00:00-00:15` | Green-water field habitat | `Confirmed` indexed/path; timestamp corrected | `public_chronicle_safe` candidate | Approval required; do not use old `00:00-00:30` range | `SRC_MEDIA_PACKET`; `SRC_LINK_VERIFY`. |
| `MED_20260408_140153_MP4` | `Media` | `M:\miniBIOTA\miniBIOTA_Files\8. Raw Footage\Photos & Videos\2026\20260408_140153.mp4`, `00:45-00:55` | Organism/sample introduction | `Confirmed` indexed/path/timestamp | `public_chronicle_safe` candidate | Blocks outcome claims | `SRC_MEDIA_PACKET`; `SRC_LINK_VERIFY`. |
| `MED_20260408_121519_MP4` | `Media` | `M:\miniBIOTA\miniBIOTA_Files\8. Raw Footage\Photos & Videos\2026\20260408_121519.mp4`, `00:06-01:13` | Daphnia/microcrustacean-sensitive evidence | `Confirmed` indexed/path/timestamp; ID-sensitive | `internal_research_note` until reviewed | `GATE_DAPHNIA_ID` required | `SRC_MEDIA_PACKET`; `SRC_LINK_VERIFY`; `SRC_RESEARCH_VALIDATION`. |
| `MED_20260408_141102_MP4` | `Media` | `M:\miniBIOTA\miniBIOTA_Files\8. Raw Footage\Photos & Videos\2026\20260408_141102.mp4`, `00:00-00:24` | Post-introduction small organism | `Confirmed` indexed/path/timestamp; high ID risk | `internal_research_note` until reviewed | `GATE_DAPHNIA_ID` required | `SRC_MEDIA_PACKET`; `SRC_LINK_VERIFY`. |
| `MED_20260419_212350_MP4` | `Media` | `M:\miniBIOTA\miniBIOTA_Files\8. Raw Footage\Photos & Videos\2026\20260419_212350.mp4`, `00:06-01:09` | Ghost Shrimp zoea candidate | `Confirmed` indexed/path/timestamp; visual ID needs review | `internal_research_note` until reviewed | `GATE_GHOST_RECRUITMENT` and media review required | `SRC_MEDIA_PACKET`; `SRC_LINK_VERIFY`; `SRC_RESEARCH_VALIDATION`. |
| `MED_20260408_161920_MP4` | `Media` | `M:\miniBIOTA\miniBIOTA_Files\8. Raw Footage\Photos & Videos\2026\20260408_161920.mp4`, `00:14-00:40` | Mesostoma close-up with eggs | `Confirmed` indexed/path/timestamp; public handling gated | `internal_research_note` | `GATE_MESOSTOMA_PUBLICNESS` required | `SRC_MEDIA_PACKET`; `SRC_LINK_VERIFY`. |
| `MED_20260408_135213_MP4` | `Media` | `M:\miniBIOTA\miniBIOTA_Files\8. Raw Footage\Photos & Videos\2026\20260408_135213.mp4`, `00:00-01:35` | Mixed-organism close-up | `Confirmed` indexed/path/timestamp; ID-sensitive | `internal_research_note` | Frame-level review required before public use | `SRC_MEDIA_PACKET`; `SRC_LINK_VERIFY`. |
| `MED_20260408_112739_MP4` | `Media` | `M:\miniBIOTA\miniBIOTA_Files\8. Raw Footage\Photos & Videos\2026\20260408_112739.mp4`, `00:00-00:27` | Sample-density/search context | `Confirmed` indexed/path/timestamp; ID-sensitive | `internal_research_note` | Caption review required | `SRC_MEDIA_PACKET`; `SRC_LINK_VERIFY`. |
| `MED_20260503_101720_JPG` | `Media` | `M:\miniBIOTA\miniBIOTA_Files\8. Raw Footage\Other Photos & Videos\Biomes\Freshwater Lake\20260503_101720.jpg` | Later water-state comparison | `Confirmed` file exists; not indexed in `media_assets` per verification | `internal_research_note` | Chronology/media approval required | `SRC_MEDIA_PACKET`; `SRC_LINK_VERIFY`. |
| `MED_20260501_071248_MP4` | `Media` | `M:\miniBIOTA\miniBIOTA_Files\8. Raw Footage\Photos & Videos\2026\20260501_071248.mp4`, `00:00-01:31` | Ghost Shrimp follow-up not selected as proof | `Confirmed` indexed/path/timestamp; ambiguous for zoea proof | `raw_evidence_only` | Not selected as proof-quality | `SRC_MEDIA_PACKET`; `SRC_LINK_VERIFY`. |

## Candidate Edge List

All edges below are `derived_only = true`, `edge_status = candidate_not_imported`, and must preserve the listed provenance before any future import proposal.

### Provenance And Scope Edges

| Edge ID | Edge type | From -> To | Confidence | Publicness | Review status | Provenance |
|---|---|---|---|---|---|---|
| `E_SCOPE_001` | `SEEDED_FROM` | `SP_391_ONTOLOGY` -> `SEED_OLI_392_LAKE_POST_SEAL_V1` | `Confirmed` | `internal_research_note` | Candidate only | `SRC391`. |
| `E_SCOPE_002` | `SEEDED_FROM` | `SP_PACKET_338` -> `SEED_OLI_392_LAKE_POST_SEAL_V1` | `Confirmed` | `internal_research_note` | Candidate only | `SRC_PACKET_338`. |
| `E_SCOPE_003` | `SEEDED_FROM` | `SP_RESEARCH_VALIDATION` -> `SEED_OLI_392_LAKE_POST_SEAL_V1` | `Confirmed` | `internal_research_note` | Candidate only | `SRC_RESEARCH_VALIDATION`. |
| `E_SCOPE_004` | `SEEDED_FROM` | `SP_LINK_VERIFY` -> `SEED_OLI_392_LAKE_POST_SEAL_V1` | `Confirmed` | `internal_research_note` | Candidate only | `SRC_LINK_VERIFY`. |
| `E_PROV_001` | `PRIMARY_PACKET_FOR` | `SP_PACKET_338` -> `REC_PIPELINE_338` | `Confirmed` | `internal_research_note` | Verified with caveats | `SRC_PACKET_338`; `SRC_LINK_VERIFY`. |
| `E_PROV_002` | `PRIMARY_PACKET_FOR` | `SP_PACKET_338` -> `REC_CHRONICLE_30` | `Confirmed` | `internal_research_note` | Verified with caveats | `SRC_PACKET_338`; `SRC_LINK_VERIFY`. |
| `E_PROV_003` | `REFERENCES_RECORD` | `REC_PIPELINE_338` -> `REC_CHRONICLE_30` | `Confirmed` | `public_chronicle_safe` | Existing canonical relationship pointer; no write | `SRC_PACKET_338`; `SRC_LINK_VERIFY`. |
| `E_PROV_004` | `REFERENCES_RECORD` | `REC_CHRONICLE_30` -> `REC_PIPELINE_338` | `Confirmed` | `public_chronicle_safe` | Existing canonical relationship pointer; no write | `SRC_PACKET_338`; `SRC_LINK_VERIFY`. |
| `E_PROV_005` | `ABOUT_BIOME` | `REC_PIPELINE_338` -> `REC_BIOME_1` | `Confirmed` | `public_chronicle_safe` | Source-context pointer only | `SRC_PACKET_338`; `SRC_LINK_VERIFY`. |
| `E_PROV_006` | `ABOUT_BIOME` | `REC_CHRONICLE_30` -> `REC_BIOME_1` | `Confirmed` | `public_chronicle_safe` | Source-context pointer only | `SRC_PACKET_338`; `SRC_LINK_VERIFY`. |

### Chronicle Subject Candidate Edges

These edges reflect verified current chronicle subject links only for species inside this task's bounded species list. Existing source links to species outside the bounded list are excluded below.

| Edge ID | Edge type | From -> To | Subject role | Confidence | Publicness | Review status | Provenance |
|---|---|---|---|---|---|---|---|
| `E_SUBJ_001` | `ABOUT_SPECIES` | `REC_CHRONICLE_30` -> `SPC_FLAGFISH_24` | `major_impact` | `Confirmed` | `public_chronicle_safe` | Candidate pointer to existing subject link; no write | `SRC_PACKET_338`; `SRC_LINK_VERIFY`. |
| `E_SUBJ_002` | `ABOUT_SPECIES` | `REC_CHRONICLE_30` -> `SPC_DAPHNIA_164` | `major_impact` | `Confirmed` link; Daphnia wording gated | `public_species_candidate` | Requires Daphnia review gates for public text/media | `SRC_PACKET_338`; `SRC_RESEARCH_VALIDATION`; `SRC_LINK_VERIFY`. |
| `E_SUBJ_003` | `ABOUT_SPECIES` | `REC_CHRONICLE_30` -> `SPC_GHOST_SHRIMP_67` | `major_impact` | `Confirmed` | `public_species_candidate` | Recruitment language gated | `SRC_PACKET_338`; `SRC_RESEARCH_VALIDATION`; `SRC_LINK_VERIFY`. |
| `E_SUBJ_004` | `ABOUT_SPECIES` | `REC_CHRONICLE_30` -> `SPC_AMPHIPODS_66` | `context` | `Confirmed` | `related_context_only` | Do not promote without review | `SRC_PACKET_338`; `SRC_LINK_VERIFY`. |
| `E_SUBJ_005` | `BLOCKS_PUBLIC_USE_OF` | `GATE_MESOSTOMA_PUBLICNESS` -> proposed `REC_CHRONICLE_30 ABOUT_SPECIES SPC_MESOSTOMA_167` | Proposed context link only | `Do not claim publicly yet` as public link | `blocked_public_use` | Requires Research + Company + Content approval | `SRC_RESEARCH_VALIDATION`; `SRC_LINK_VERIFY`; `SRC391`. |
| `E_SUBJ_006` | `BLOCKS_PUBLIC_USE_OF` | `GATE_MEDIA_CAPTION` -> proposed `REC_CHRONICLE_30 ABOUT_SPECIES SPC_MOINA_180` | Proposed/context only | `Unknown` | `blocked_public_use` for public subject link | Review required before public promotion | `SRC_RESEARCH_VALIDATION`; `SRC391`. |

### Observation Evidence Edges

Edges from observations `170-178` to claims/events are packet-derived evidence relationships, not direct canonical observation-to-pipeline/chronicle links.

| Edge ID | Edge type | From -> To | Evidence basis | Observed vs inferred | Confidence | Publicness | Review status | Provenance |
|---|---|---|---|---|---|---|---|---|
| `E_OBS_170_001` | `SUPPORTS_CLAIM` | `OBS_170` -> `CLM_FOOD_WEB_RESET_FRAME` | Packet association | Mixed observation/interpreted frame | `Confirmed` for opacity evidence; interpretation cautious | `public_chronicle_safe` | Blocks clearing causation | `SRC_PACKET_338`; `SRC_RESEARCH_VALIDATION`; `SRC_LINK_VERIFY`. |
| `E_OBS_170_002` | `BLOCKS_PUBLIC_USE_OF` | `GATE_DAPHNIA_OUTCOME` -> `OBS_170` as proof of `CLM_DAPHNIA_CLEARING_BLOCKED` | Review gate | Inferred causal overclaim | `Do not claim publicly yet` | `blocked_public_use` | Blocked | `SRC_RESEARCH_VALIDATION`; `SRC391`. |
| `E_OBS_171_001` | `CONTEXT_FOR` | `OBS_171` -> `CLM_FOOD_WEB_RESET_FRAME` | Packet association | Inferred mechanism/context | `Likely` | `internal_research_note` | Public mechanism wording needs review | `SRC_PACKET_338`; `SRC_LINK_VERIFY`. |
| `E_OBS_172_001` | `CONTEXT_FOR` | `OBS_172` -> `CLM_DAPHNIA_INTRODUCED_SP` | Packet association | Diagnostic trial context | `Likely` | `internal_research_note` | Do not generalize failure | `SRC_PACKET_338`; `SRC_RESEARCH_VALIDATION`. |
| `E_OBS_173_001` | `CONTEXT_FOR` | `OBS_173` -> `EVT_FIELD_SEARCH_2026_04_08` | Packet association | Observed field search | `Confirmed` | `related_context_only` | Do not treat as global absence | `SRC_PACKET_338`; `SRC_LINK_VERIFY`. |
| `E_OBS_174_001` | `CONTEXT_FOR` | `OBS_174` -> `EVT_FIELD_SEARCH_2026_04_08` | Packet association | Planned/test context | `Confirmed` | `raw_evidence_only` | Duckweed subject excluded | `SRC_PACKET_338`; `SRC_LINK_VERIFY`. |
| `E_OBS_175_001` | `SUPPORTS_CLAIM` | `OBS_175` -> `CLM_DAPHNIA_INTRODUCED_SP` | Packet association | Observed discovery with ID uncertainty | `Possible`/`Likely` | `public_species_candidate` only after review | `GATE_DAPHNIA_ID` applies | `SRC_PACKET_338`; `SRC_RESEARCH_VALIDATION`; `SRC_LINK_VERIFY`. |
| `E_OBS_176_001` | `SUPPORTS_CLAIM` | `OBS_176` -> `CLM_DAPHNIA_INTRODUCED_SP` | Packet association | Observed composition/introduction precursor | `Confirmed` for broad composition; ID-sensitive | `public_species_candidate` only after review | `GATE_DAPHNIA_ID` applies | `SRC_PACKET_338`; `SRC_RESEARCH_VALIDATION`; `SRC_LINK_VERIFY`. |
| `E_OBS_176_002` | `SUPPORTS_CLAIM` | `OBS_176` -> `CLM_MESOSTOMA_PRESSURE_INTERNAL` | Packet association | Observed Mesostoma presence plus inferred pressure | `Likely` | `internal_research_note` | `GATE_MESOSTOMA_PUBLICNESS` applies | `SRC_PACKET_338`; `SRC_RESEARCH_VALIDATION`; `SRC_LINK_VERIFY`. |
| `E_OBS_177_001` | `PART_OF_EVENT` | `OBS_177` -> `EVT_INTRODUCTION_2026_04_08` | Packet association | Observed introduction | `Confirmed` | `public_chronicle_safe` for introduction only | Outcome claims blocked | `SRC_PACKET_338`; `SRC_LINK_VERIFY`. |
| `E_OBS_177_002` | `SUPPORTS_CLAIM` | `OBS_177` -> `CLM_DAPHNIA_INTRODUCED_SP` | Packet association | Observed introduction | `Confirmed` for broad introduction | `public_species_candidate` with caution | `GATE_DAPHNIA_OUTCOME` blocks establishment | `SRC_RESEARCH_VALIDATION`; `SRC_PACKET_338`. |
| `E_OBS_178_001` | `PART_OF_EVENT` | `OBS_178` -> `EVT_MESOSTOMA_CORRECTION_2026_04_08` | Packet association | Review/correction event | `Likely` | `internal_research_note` | `GATE_MESOSTOMA_PUBLICNESS` applies | `SRC_PACKET_338`; `SRC_RESEARCH_VALIDATION`; `SRC_LINK_VERIFY`. |
| `E_OBS_178_002` | `SUPPORTS_CLAIM` | `OBS_178` -> `CLM_MESOSTOMA_PRESSURE_INTERNAL` | Packet association | Inferred predator-pressure tension | `Likely` | `internal_research_note` | Public use gated | `SRC_RESEARCH_VALIDATION`; `SRC_LINK_VERIFY`. |
| `E_OBS_ALL_001` | `QUALIFIES_CLAIM` | `CLM_OBS_DIRECT_LINK_MISSING` -> observations `170-178` | Link verification | Link-integrity caveat | `Confirmed` | `internal_research_note` | Direct-link cleanup gate applies | `SRC_LINK_VERIFY`; `SRC391`. |

### Event And Claim Edges

| Edge ID | Edge type | From -> To | Evidence basis | Confidence | Publicness | Review status | Provenance |
|---|---|---|---|---|---|---|---|
| `E_EVT_001` | `PART_OF_EVENT` | `REC_CHRONICLE_30` -> `EVT_PUBLICATION_2026_04_17` | Direct record | `Confirmed` | `public_chronicle_safe` | No edit implied | `SRC_PACKET_338`; `SRC_LINK_VERIFY`. |
| `E_EVT_002` | `QUALIFIES_CLAIM` | `EVT_ECO_WINDOW_2026_03_12_TO_04_08` -> `CLM_CHRONOLOGY_REVIEW` | Research interpretation | `Likely` | `internal_research_note` | `GATE_CHRONOLOGY` applies | `SRC_RESEARCH_VALIDATION`; `SRC_PACKET_338`. |
| `E_EVT_003` | `PART_OF_EVENT` | `SPC_FLAGFISH_24` -> `EVT_FLAGFISH_REMOVAL_2026_04_05` | Structured/source evidence | `Confirmed` | `public_chronicle_safe` | Framing gate applies | `SRC_PACKET_338`; `SRC_RESEARCH_VALIDATION`. |
| `E_EVT_004` | `SUPPORTS_CLAIM` | `EVT_FLAGFISH_REMOVAL_2026_04_05` -> `CLM_FLAGFISH_REMOVED_MANAGEMENT` | Research validation | `Confirmed` | `public_chronicle_safe` | Do-not-say guardrail active | `SRC_RESEARCH_VALIDATION`. |
| `E_EVT_005` | `PART_OF_EVENT` | `SPC_DAPHNIA_164` -> `EVT_INTRODUCTION_2026_04_08` | Packet evidence | `Confirmed` broad; species-level gated | `public_species_candidate` | `GATE_DAPHNIA_ID` and `GATE_DAPHNIA_OUTCOME` apply | `SRC_PACKET_338`; `SRC_RESEARCH_VALIDATION`. |
| `E_EVT_006` | `QUALIFIES_CLAIM` | `CLM_DAPHNIA_ESTABLISHMENT_UNRESOLVED` -> `CLM_DAPHNIA_INTRODUCED_SP` | Research validation | `Confirmed` | `public_species_candidate` | Required qualifier | `SRC_RESEARCH_VALIDATION`. |
| `E_EVT_007` | `QUALIFIES_CLAIM` | `CLM_GHOST_SHRIMP_BREEDING_ONLY` -> `SPC_GHOST_SHRIMP_67` | Research validation | `Confirmed` breeding; recruitment unknown | `public_species_candidate` | Recruitment gate active | `SRC_RESEARCH_VALIDATION`; `SRC_LINK_VERIFY`. |
| `E_EVT_008` | `BLOCKS_PUBLIC_USE_OF` | `GATE_CHRONOLOGY` -> `CLM_CHRONOLOGY_REVIEW` | Review gate | `Do not claim publicly yet` for structured edit | `blocked_public_use` for date change | Review required | `SRC_RESEARCH_VALIDATION`; `SRC391`. |
| `E_EVT_009` | `BLOCKS_PUBLIC_USE_OF` | `GATE_DAPHNIA_OUTCOME` -> `CLM_DAPHNIA_CLEARING_BLOCKED` | Review gate | `Do not claim publicly yet` | `blocked_public_use` | Blocked | `SRC_RESEARCH_VALIDATION`; `SRC391`. |
| `E_EVT_010` | `BLOCKS_PUBLIC_USE_OF` | `GATE_DAPHNIA_OUTCOME` -> `CLM_FOOD_WEB_COMPLETION_BLOCKED` | Review gate | `Do not claim publicly yet` | `blocked_public_use` | Blocked | `SRC_RESEARCH_VALIDATION`; `SRC391`. |
| `E_EVT_011` | `BLOCKS_PUBLIC_USE_OF` | `GATE_GHOST_RECRUITMENT` -> proposed Ghost Shrimp recruitment/establishment claim | Review gate | `Do not claim publicly yet` | `blocked_public_use` | Blocked until evidence | `SRC_RESEARCH_VALIDATION`; `SRC391`. |
| `E_EVT_012` | `BLOCKS_PUBLIC_USE_OF` | `GATE_MESOSTOMA_PUBLICNESS` -> public Mesostoma subject/caption claim | Review gate | `Do not claim publicly yet` | `blocked_public_use` | Review required | `SRC_RESEARCH_VALIDATION`; `SRC_LINK_VERIFY`. |

### Media Candidate Edges

| Edge ID | Edge type | From -> To | Candidate meaning | Confidence | Publicness | Review status | Provenance |
|---|---|---|---|---|---|---|---|
| `E_MED_001` | `DEPICTS` | `MED_20260408_082108_JPG` -> `REC_BIOME_1` | Opaque Freshwater Lake visual context | `Confirmed` file; not indexed | `public_chronicle_safe` candidate | Media approval required | `SRC_MEDIA_PACKET`; `SRC_LINK_VERIFY`. |
| `E_MED_002` | `DEPICTS` | `MED_20260405_121055_MP4` -> `EVT_FLAGFISH_REMOVAL_2026_04_05` | Flagfish transfer/retirement candidate | `Confirmed` | `public_chronicle_safe` candidate | Caption framing review | `SRC_MEDIA_PACKET`; `SRC_LINK_VERIFY`. |
| `E_MED_003` | `DEPICTS` | `MED_20260405_114948_MP4` -> `REC_BIOME_1` | Pre-introduction opacity context | `Confirmed` | `public_chronicle_safe` candidate | Approval required | `SRC_MEDIA_PACKET`; `SRC_LINK_VERIFY`. |
| `E_MED_004` | `DEPICTS` | `MED_20260408_112539_MP4` -> `EVT_FIELD_SEARCH_2026_04_08` | Field habitat context | `Confirmed` | `public_chronicle_safe` candidate | Avoid organism-source caption | `SRC_MEDIA_PACKET`; `SRC_LINK_VERIFY`. |
| `E_MED_005` | `DEPICTS` | `MED_20260408_112606_MP4` -> `EVT_FIELD_SEARCH_2026_04_08` | Field sampling context | `Confirmed` | `public_chronicle_safe` candidate | Avoid target-organism ID | `SRC_MEDIA_PACKET`; `SRC_LINK_VERIFY`. |
| `E_MED_006` | `DEPICTS` | `MED_20260408_114418_MP4` -> `EVT_FIELD_SEARCH_2026_04_08` | Green-water field habitat | `Confirmed` after timestamp correction | `public_chronicle_safe` candidate | Do not use old timestamp | `SRC_MEDIA_PACKET`; `SRC_LINK_VERIFY`. |
| `E_MED_007` | `DEPICTS` | `MED_20260408_140153_MP4` -> `EVT_INTRODUCTION_2026_04_08` | Field-collected sample added to lake | `Confirmed` | `public_chronicle_safe` candidate | Blocks establishment/outcome captions | `SRC_MEDIA_PACKET`; `SRC_LINK_VERIFY`. |
| `E_MED_008` | `REQUIRES_REVIEW` | `MED_20260408_121519_MP4` -> `GATE_DAPHNIA_ID` | Daphnia/microcrustacean visual ID risk | `Needs microscopy` or frame-level review | `internal_research_note` | Required before public use | `SRC_MEDIA_PACKET`; `SRC_LINK_VERIFY`; `SRC_RESEARCH_VALIDATION`. |
| `E_MED_009` | `REQUIRES_REVIEW` | `MED_20260408_141102_MP4` -> `GATE_DAPHNIA_ID` | Post-introduction small-organism ID risk | `Unknown`/ID-sensitive | `internal_research_note` | Required before public use | `SRC_MEDIA_PACKET`; `SRC_LINK_VERIFY`. |
| `E_MED_010` | `REQUIRES_REVIEW` | `MED_20260419_212350_MP4` -> `GATE_GHOST_RECRUITMENT` | Ghost Shrimp zoea candidate use | `Unknown` until visual confirmation | `internal_research_note` | Required before public use | `SRC_MEDIA_PACKET`; `SRC_LINK_VERIFY`; `SRC_RESEARCH_VALIDATION`. |
| `E_MED_011` | `REQUIRES_REVIEW` | `MED_20260408_161920_MP4` -> `GATE_MESOSTOMA_PUBLICNESS` | Mesostoma close-up publicness risk | `Likely`/ID-sensitive | `internal_research_note` | Research + Company required | `SRC_MEDIA_PACKET`; `SRC_LINK_VERIFY`. |
| `E_MED_012` | `REQUIRES_REVIEW` | `MED_20260408_135213_MP4` -> `GATE_MEDIA_CAPTION` | Mixed-organism ID risk | `Unknown` for public IDs | `internal_research_note` | Frame-level review required | `SRC_MEDIA_PACKET`; `SRC_LINK_VERIFY`. |
| `E_MED_013` | `REQUIRES_REVIEW` | `MED_20260408_112739_MP4` -> `GATE_MEDIA_CAPTION` | Sample-density/search clip ID risk | `Unknown` for public IDs | `internal_research_note` | Caption review required | `SRC_MEDIA_PACKET`; `SRC_LINK_VERIFY`. |
| `E_MED_014` | `BLOCKS_PUBLIC_USE_OF` | `GATE_CHRONOLOGY` -> `MED_20260503_101720_JPG` as proof of source outcome | Later context should not prove April source outcome | `Do not claim publicly yet` | `blocked_public_use` for outcome proof | Review required | `SRC_MEDIA_PACKET`; `SRC_RESEARCH_VALIDATION`; `SRC_LINK_VERIFY`. |
| `E_MED_015` | `BLOCKS_PUBLIC_USE_OF` | `GATE_GHOST_RECRUITMENT` -> `MED_20260501_071248_MP4` as zoea/recruitment proof | Not selected as proof-quality | `Unknown` | `blocked_public_use` for recruitment proof | Blocked unless re-reviewed | `SRC_MEDIA_PACKET`; `SRC_LINK_VERIFY`. |
| `E_MED_016` | `QUALIFIES_CLAIM` | `CLM_MEDIA_APPROVAL_SEPARATE` -> all `MED_*` nodes | Media recommendations are not approvals | `Confirmed` | `internal_research_note` | Separate approval required | `SRC_PACKET_338`; `SRC_LINK_VERIFY`; `SRC391`. |

## Relationship Exclusions And Blocked Edges

| Blocked edge ID | Blocked relationship | Why blocked/excluded | Required review or condition | Provenance |
|---|---|---|---|---|
| `B_EDGE_001` | `OBS_170-178` -> `REC_PIPELINE_338` as direct canonical observation-pipeline links | Link verification says observations are packet-associated, not directly linked by `observations.pipeline_id = 338`. | App + Content + Research approved link-cleanup bundle. | `SRC_LINK_VERIFY`; `SRC391`. |
| `B_EDGE_002` | `OBS_170-178` -> `REC_CHRONICLE_30` as direct canonical observation-chronicle links | Link verification says direct observation-to-chronicle fields are absent. | App + Content + Research approved link-cleanup bundle. | `SRC_LINK_VERIFY`; `SRC391`. |
| `B_EDGE_003` | `SPC_DAPHNIA_164` -> claim `Daphnia ambigua confirmed` | Species-level ID is not public-ready. | Microscopy or expert confirmation plus Research review. | `SRC_RESEARCH_VALIDATION`; `SRC391`. |
| `B_EDGE_004` | `SPC_DAPHNIA_164` -> claim `Daphnia established/reproduced` | Establishment and reproduction are unresolved in this bounded packet. | Separate Daphnia public-readiness review. | `SRC_RESEARCH_VALIDATION`; `SRC391`. |
| `B_EDGE_005` | `OBS_170`, `OBS_177`, or Daphnia media -> claim `Daphnia cleared the lake` | Causation and durable outcome are not proven. | Stronger evidence and Research claim check. | `SRC_RESEARCH_VALIDATION`; `SRC391`. |
| `B_EDGE_006` | `REC_BIOME_1` -> claim `food web complete/stable/sustainable` | Food-web completion remains unresolved/advanced, not confirmed. | Separate ecological mechanism/claim review. | `SRC_RESEARCH_VALIDATION`; `SRC391`. |
| `B_EDGE_007` | `SPC_GHOST_SHRIMP_67` -> claim `juvenile recruitment/second generation/self-sustaining` | Breeding is confirmed; recruitment is unconfirmed. | Research review with juvenile evidence. | `SRC_RESEARCH_VALIDATION`; `SRC_LINK_VERIFY`. |
| `B_EDGE_008` | `SPC_MESOSTOMA_167` -> public primary/major-impact chronicle subject | Mesostoma is not currently linked to chronicle `30`; public handling is gated. | Research + Company + Content approval. | `SRC_RESEARCH_VALIDATION`; `SRC_LINK_VERIFY`. |
| `B_EDGE_009` | `SPC_MESOSTOMA_167` -> claim `Mesostoma ate through Daphnia/ostracods` | Predator pressure is unresolved; causation not proven. | Stronger observation evidence and Research review. | `SRC_RESEARCH_VALIDATION`; `SRC391`. |
| `B_EDGE_010` | `SPC_MOINA_180` -> claim `Moina reproduced/established` | Moina is context only in this seed. | Separate review; later observations are out of this seed. | `SRC_RESEARCH_VALIDATION`; `SRC391`. |
| `B_EDGE_011` | Any media node -> final public caption/species image/website asset | Packet provides recommendations only. | Separate Content/App/Research media approval. | `SRC_MEDIA_PACKET`; `SRC_LINK_VERIFY`; `SRC391`. |
| `B_EDGE_012` | Existing chronicle links to species `65`, `169`, `25` as first-pilot species nodes | These species are outside the user-bounded species list for task `392`. | Explicit approval to expand the seed. | User task `392`; `SRC391`; `SRC_LINK_VERIFY`. |
| `B_EDGE_013` | Later observations `179+` as first-seed observation nodes | User-bounded seed says observations `170-178` and explicitly approved context only; no later context list was approved in this task. | Explicit context-record approval. | User task `392`; `SRC391`; `SRC_RESEARCH_VALIDATION`. |
| `B_EDGE_014` | Story threads/open loops as first-class graph nodes | Task `391` left this as an open question; task `392` does not approve expansion. | Company/App/Research decision for a later pilot. | `SRC391`; `SRC_LINK_VERIFY`. |

## Validation Questions Before Graph Import

1. Is the bounded source set frozen with exact source file versions or checksums?
2. Has Company/App agreed that this graph is discardable derived data, not a canonical ecological store?
3. Are all candidate node IDs stable enough for an import dry run, or should App generate its own ids?
4. Should Freshwater Lake biome `1` be allowed as an explicit node even though the user-bounded species/observation list did not separately name a biome id?
5. Should story threads and open loops remain cited provenance only, or be promoted to first-class nodes in a later seed?
6. Are observations `170-178` correctly represented as packet-associated evidence, not direct canonical pipeline/chronicle links?
7. Are all later observations after `178` excluded until explicitly approved as context records?
8. Are out-of-scope chronicle subject species `65`, `169`, and `25` excluded from this seed, even though they exist in current chronicle subject links?
9. Does every Daphnia-related edge preserve `Daphnia sp.`, unresolved establishment, and ID/media review gates?
10. Does every Ghost Shrimp edge preserve confirmed breeding versus unconfirmed recruitment?
11. Does every Mesostoma edge keep public use gated unless a later review approves context handling?
12. Does every media edge distinguish public candidate, internal-only, raw evidence, and blocked proof use?
13. Are filesystem-only stills distinguished from indexed `media_assets`?
14. Is the corrected timestamp for `20260408_114418.mp4` preserved as `00:00-00:15`?
15. Can graph queries exclude all `blocked_public_use`, `internal_research_note`, and `raw_evidence_only` material from public outputs?
16. Can graph queries prevent `CONTEXT_FOR` edges from being treated as `SUPPORTS_CLAIM` edges?
17. Can the graph represent publish date and ecological event window without creating a date edit?
18. Does the import process have a no-write dry-run mode and a delete/regenerate path?
19. Will App display candidate/publicness/review labels clearly enough that downstream agents do not treat candidates as approval?
20. Is there an explicit approval step before any candidate edge becomes canonical, public, or app-visible?

## Open Questions For Company, App, And Content

| Owner | Question |
|---|---|
| Company | Should task `392` remain a Research planning artifact only, or should it become the model for a cross-domain approval-bundle checklist? |
| Company + Research | Who owns final review vocabulary if graph review state later becomes productized? |
| App | Should graph candidates be stored as Markdown-derived dry-run output, a temporary table, a graph database import file, or not stored at all until the model stabilizes? |
| App | How should candidate relationships preserve source paths, source sections, and source checksums? |
| App | How will UI/API consumers distinguish canonical relationships from packet-derived candidate relationships? |
| App | Should blocked edges be imported as negative/guardrail relationships, or kept only in Research Markdown? |
| Content | Which media candidates, if any, should move into a later media approval bundle? |
| Content + Research | Should Mesostoma remain internal/open-loop only, or should Content propose a cautious public context link for review? |
| Content + Research | What exact public wording, if any, should Daphnia receive while staying `Daphnia sp.` with unresolved establishment? |
| Company + Content + Research | What is the durable policy for publish date versus ecological event window in Living Atlas graph records? |
| Research | Should a Daphnia public-readiness dossier be completed before any Daphnia node is allowed into public species-profile workflows? |
| Research + App | Should later observations after `178` be approved as context records for a second graph seed, or kept out of the first proof import entirely? |

## Sources

- User request for Research task `392`, received May 14, 2026.
- `M:\miniBIOTA\miniBIOTA_Research\research\research-briefs\2026-05-14-operation-living-intelligence-task-391-graph-ontology.md`
- `M:\miniBIOTA\miniBIOTA_Content\audits\living_atlas\source_packets\pipeline_338_chronicle_30_lake_post_seal_2026-05-12.md`
- `M:\miniBIOTA\miniBIOTA_Research\research\research-briefs\2026-05-13-living-atlas-pipeline-338-research-validation.md`
- `M:\miniBIOTA\miniBIOTA_Research\research\research-briefs\2026-05-13-living-atlas-pipeline-338-link-evidence-verification.md`
- `M:\miniBIOTA\miniBIOTA_Content\video_projects\archive\2026-04_biome_lake-post-seal.md` as cited source context from the packet.
- `memory/02-source-of-truth-and-write-policy.md`
- `skills/claim-check/reference/uncertainty-labels.md`
