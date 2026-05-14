---
id: operation_living_intelligence_task_391_graph_ontology_2026_05_14
title: Operation Living Intelligence Task 391 First Research Graph Ontology
type: research_planning_brief
status: complete
last_updated: 2026-05-14
for_agent: Research, App, Company
tags: [research-brief, operation-living-intelligence, task-391, graph-ontology, living-atlas, pipeline-338, chronicle-30, lake-post-seal]
---
# Research Brief: Operation Living Intelligence Task 391 First Research Graph Ontology

## Audience

Intended downstream agent or use: Research-owned planning brief for the first derived graph ontology in Operation Living Intelligence, using the Lake Post-Seal Living Atlas packet as the bounded proof case.

This is a docs-only Research planning artifact. It does not approve Supabase writes, graph imports, graph data creation, App behavior changes, Content writes, public copy, public media captions, species-card edits, chronicle edits, observation-link edits, open-loop edits, or Planner task closure.

## Plain-Language Summary

The first graph should be a derived evidence and review graph, not a second ecological database. Its job is to connect canonical records, source packets, claims, media, confidence labels, publicness tiers, and review gates so downstream agents can ask, "What can be used publicly, what is only internal evidence, and why?"

For the first seed, the graph should stay inside the Lake Post-Seal Living Atlas boundary: `content_pipeline.id = 338`, `chronicles.id = 30`, species `24`, `67`, `66`, `164`, `167`, and `180`, observations `170-178`, explicitly approved context records only, Living Atlas source packets, Research validation notes, proposed-write bundle notes, and media references only.

The graph must preserve the same Research cautions already validated for the packet: Daphnia remains `Daphnia sp.` publicly; Daphnia establishment is unresolved; Ghost Shrimp breeding is confirmed but juvenile recruitment is unconfirmed; Mesostoma remains internal or review-gated for public use; lake clearing and food-web completion are not confirmed causal outcomes.

## First Pilot Scope

### In Scope

| Scope item | Pilot boundary |
|---|---|
| Proof case | Lake Post-Seal Living Atlas packet. |
| Pipeline | `content_pipeline.id = 338`. |
| Chronicle | `chronicles.id = 30`. |
| Species | Flagfish `24`, Ghost Shrimp `67`, Freshwater amphipods `66`, Daphnia `164`, Mesostoma `167`, Moina `180`. |
| Observations | Primary packet observations `170-178`; explicitly approved context records only. |
| Source documents | Living Atlas source packets, Research validation notes, proposed-write bundle notes, and media references tied to the proof case. |
| Graph status | Derived only. Supabase and Research Markdown remain canonical. |

### Out Of Scope

The first pilot should not discover new records globally, import the whole ecosystem graph, or infer a wider food web from adjacent records. It should only model the approved proof case and its review boundaries.

## Ontology Principles

- The graph stores claim/evidence relationships, not canonical ecology.
- Every node and edge must point back to a canonical record or source document section.
- A missing canonical relationship must remain missing. The graph may say "the packet associates observation `170` with pipeline `338`," but it must not imply a live Supabase observation-to-pipeline link exists.
- Publicness is claim-level and media-use-level, not just species-level.
- Confidence labels must use the active Research uncertainty labels.
- Observed miniBIOTA facts, inference, planned work, speculation, and proposed public wording must be separable by query.
- Review status must be explicit enough to prevent weak claims from becoming public by adjacency.
- Graph output must be safe to discard and regenerate from canonical sources.

## Node Classes Needed For The First Pilot

### `GraphSeed`

Represents a bounded derived extraction run or planned seed boundary.

Required uses:
- Scope enforcement.
- Provenance for all nodes and edges created from the same packet.
- Reproducibility checks before any future import.

Required properties:
- `seed_id`: stable local id, for example `oli_task_391_lake_post_seal_v1`.
- `seed_status`: `planned`, `drafted`, `validated`, `import_ready`, or `retired`.
- `canonical_write_policy`: must be `derived_only`.
- `source_set_summary`: short description of the approved source set.
- `allowed_record_ids`: structured list of allowed pipeline, chronicle, species, observation, and media references.
- `excluded_record_policy`: text pointer to this brief's exclusion rules.
- `created_from_doc`: path to this planning brief.

### `SourcePacket`

Represents a packet, validation note, proposed-write bundle note, or media reference document used as evidence.

Required properties:
- `source_packet_id`: stable local id.
- `source_type`: `content_source_packet`, `research_validation_note`, `link_evidence_verification`, `proposed_write_bundle_note`, or `media_reference`.
- `source_path`: absolute or repo-relative path.
- `source_date`: document date when known.
- `source_owner`: `Content`, `Research`, `App`, or `Company`.
- `canonical_status`: `source_evidence`, not canonical ecology.
- `reviewed_by_research`: boolean.
- `checksum_or_version_note`: required before import-ready status.

### `CanonicalRecord`

Represents a pointer to a Supabase or filesystem record without copying ownership into the graph.

Use this for `content_pipeline`, `chronicle`, `species`, `observation`, and indexed `media_asset` records when a generic reference node is cleaner than repeating properties on each specific node class.

Required properties:
- `record_type`: `content_pipeline`, `chronicle`, `species`, `observation`, `media_asset`, `media_file_candidate`, `story_thread`, `open_loop`, or `other_context_record`.
- `record_id`: canonical id when one exists.
- `record_label`: human-readable label.
- `canonical_system`: `Supabase`, `filesystem`, `Research Markdown`, or `Content Markdown`.
- `canonical_write_owner`: owner of the canonical record.
- `current_state_verified_on`: date of read-only verification, or `not_verified_for_this_planning_doc`.
- `record_in_seed_scope`: boolean.

### `Species`

Represents one of the six approved species or organism-group records.

Required properties:
- `species_id`: canonical Supabase id.
- `display_label`: current label from source notes or verified record.
- `public_taxon_label`: safest public label, such as `Daphnia sp.`.
- `identification_confidence`: Research label.
- `population_claim_status`: Research label for population state claims.
- `display_status_at_source_check`: if known from validation notes.
- `publicness_tier`: default publicness tier for this packet.
- `review_status`: review state for public use in this proof case.
- `do_not_say`: list of overstrong labels or claims.

Pilot species:

| Species node | Required pilot boundary |
|---|---|
| Flagfish `24` | Public-safe as deliberate removal/management context, not failure or mortality framing. |
| Ghost Shrimp `67` | Public-safe only as confirmed breeding with juvenile recruitment unresolved. |
| Freshwater amphipods `66` | Context species only unless a later approved review promotes a stronger claim. |
| Daphnia `164` | Use `Daphnia sp.` publicly; establishment and species-level ID remain gated. |
| Mesostoma `167` | Internal or review-gated predator-pressure context by default. |
| Moina `180` | Context only; suspected reproduction and public use require review. |

### `Biome`

Represents the Freshwater Lake as the proof-case system context.

Required properties:
- `biome_id`: canonical Supabase id when referenced.
- `display_label`: `Freshwater Lake` or current verified label.
- `biome_role_in_seed`: `primary_system`.
- `state_claim_status`: Research confidence label for any state claim.
- `stability_claim_allowed`: boolean, expected `false` for this packet.
- `publicness_tier`: packet-level publicness boundary.

### `Observation`

Represents approved observation records as evidence nodes.

Required properties:
- `observation_id`: canonical Supabase id.
- `observation_scope`: `primary_packet` or `approved_context`.
- `observed_vs_inferred_status`: one of `observed`, `inferred_from_observation`, `source_interpretation`, `planned`, `speculative`, or `unknown`.
- `supports_public_claim`: boolean.
- `requires_research_review_before_public`: boolean.
- `source_packet_reference`: source packet node id.
- `direct_canonical_link_status`: `direct_link_exists`, `packet_association_only`, `missing_or_unverified`, or `not_applicable`.
- `confidence_label`: Research uncertainty label for the observation's use in this packet.

Primary pilot observations:

| Observation | Graph treatment |
|---:|---|
| `170-178` | In scope as primary packet observations. Edges to pipeline or chronicle must be represented as packet-derived associations unless a direct canonical link has been verified. |

### `Event`

Represents ecological or publication events inferred from one or more observations or source records.

Required properties:
- `event_id`: stable local id.
- `event_type`: `publication_event`, `ecological_event`, `management_action`, `introduction_event`, `observation_event`, or `review_event`.
- `event_date_type`: `single_date`, `event_window`, `publish_date`, `unknown`, or `proposed`.
- `start_date`: if known.
- `end_date`: if known.
- `date_confidence`: Research label.
- `observed_vs_inferred_status`: required.
- `canonical_record_ref`: chronicle, observation, or packet reference if applicable.
- `publicness_tier`: public use boundary.

Pilot events should include:
- Chronicle publication event on April 17, 2026 as the current chronicle date context.
- Proposed ecological event window across March 12 through April 8, 2026 as a review question, not an approved date edit.
- April 5 Flagfish removal as a management action.
- April 8 field collection and organism introduction as packet events.

### `Claim`

Represents a specific assertion that may be supported, qualified, blocked, or reviewed.

Required properties:
- `claim_id`: stable local id.
- `claim_text`: concise claim.
- `claim_subject_type`: `species`, `biome`, `observation`, `event`, `media`, `chronicle`, or `source_packet`.
- `claim_category`: `identity`, `population_status`, `reproduction`, `recruitment`, `causation`, `publicness`, `media_caption`, `chronology`, `ecological_role`, `stability`, or `link_integrity`.
- `confidence_label`: one active Research uncertainty label.
- `observed_vs_inferred_status`: required.
- `publicness_tier`: required.
- `public_use_status`: `approved_with_caution`, `candidate_needs_review`, `internal_only`, `raw_evidence_only`, or `do_not_claim_publicly_yet`.
- `review_status`: required.
- `evidence_summary`: short note.
- `source_packet_refs`: list of source packet ids.
- `supporting_record_refs`: list of canonical record refs.
- `qualifier`: required when confidence is not `Confirmed`.
- `do_not_say`: list of overclaims.

### `Media`

Represents indexed media assets or filesystem media candidates referenced by the packet.

Required properties:
- `media_ref_id`: stable id.
- `media_source_type`: `indexed_media_asset`, `filesystem_candidate`, or `unverified_reference`.
- `file_path_or_asset_id`: canonical pointer.
- `timestamp_start`: if cited.
- `timestamp_end`: if cited.
- `timestamp_verified`: boolean.
- `depicts_claim_id`: optional claim pointer.
- `depicts_species_id`: optional species pointer.
- `caption_publicness_tier`: required.
- `visual_id_confidence`: Research label when organism ID depends on the media.
- `requires_frame_level_review`: boolean.
- `media_use_status`: `public_candidate`, `research_review_required`, `internal_only`, or `blocked`.

### `PublicnessTier`

Controlled publicness category. This can be a node for queryability or a required controlled property on `Claim`, `Media`, `Species`, `Event`, and `Observation`.

Allowed first-pilot values:
- `public_chronicle_safe`
- `public_species_candidate`
- `related_context_only`
- `internal_research_note`
- `raw_evidence_only`
- `blocked_public_use`

Required properties if modeled as nodes:
- `tier_id`
- `tier_label`
- `public_allowed`: boolean.
- `requires_review_before_public`: boolean.
- `allowed_surfaces`: `chronicle`, `species_profile`, `content_handoff`, `internal_dashboard`, `none`.
- `default_claim_rule`: short rule.

### `ConfidenceAssessment`

Represents claim-level confidence and why that label was assigned.

Required properties:
- `assessment_id`
- `confidence_label`: one active Research label.
- `basis`: `direct_record`, `source_packet`, `research_validation`, `visual_media`, `inference`, `general_literature`, or `unknown`.
- `reviewer_or_source`: person, agent, or source doc.
- `assessment_date`
- `uncertainty_note`
- `public_guidance`

### `ReviewGate`

Represents a required review before a claim, media use, label, or relationship can become public or import-ready.

Required properties:
- `review_gate_id`
- `review_owner`: `Research`, `Content`, `App`, `Company`, `Website`, or `Unknown`.
- `review_trigger`: what causes the gate.
- `review_status`: `not_started`, `research_review_required`, `validated_for_internal_use`, `validated_for_public_candidate`, `blocked`, `needs_more_evidence`, or `resolved`.
- `blocked_public_claims`: list of claim ids or claim patterns.
- `required_evidence`: what must be checked.
- `decision_note`: required once reviewed.

## Relationship And Edge Types

| Edge type | Direction | Meaning | Required edge properties |
|---|---|---|---|
| `SEEDED_FROM` | any node -> `GraphSeed` | Node belongs to this derived seed boundary. | `seed_id`, `created_from_source`, `scope_status`. |
| `DERIVED_FROM` | any node/edge -> `SourcePacket` | Assertion came from a source document or note. | `source_packet_id`, `source_section`, `extraction_note`, `confidence_label`. |
| `REFERENCES_RECORD` | graph node -> `CanonicalRecord` | Graph node points to a canonical record. | `record_type`, `record_id`, `verified_on`, `write_policy`. |
| `PRIMARY_PACKET_FOR` | `SourcePacket` -> `ContentPipeline` or `Chronicle` ref | Packet belongs to the bounded proof case. | `association_basis`, `verified_status`. |
| `ABOUT_SPECIES` | `Claim`, `Observation`, `Media`, or `Event` -> `Species` | Subject involves a species. | `subject_role`, `confidence_label`, `publicness_tier`. |
| `ABOUT_BIOME` | `Claim`, `Observation`, `Media`, or `Event` -> `Biome` | Subject involves the Freshwater Lake. | `subject_role`, `confidence_label`. |
| `OBSERVED_IN` | `Observation` -> `Biome` | Observation occurred in the biome. | `observed_vs_inferred_status`, `canonical_link_status`. |
| `PART_OF_EVENT` | `Observation` or `Media` -> `Event` | Evidence belongs to an event. | `association_basis`, `date_confidence`. |
| `SUPPORTS_CLAIM` | `Observation`, `Media`, `SourcePacket`, or `Event` -> `Claim` | Evidence supports a claim. | `support_strength`, `confidence_label`, `observed_vs_inferred_status`. |
| `QUALIFIES_CLAIM` | `Claim` or `ConfidenceAssessment` -> `Claim` | One note narrows another claim. | `qualifier_type`, `public_guidance`. |
| `BLOCKS_PUBLIC_USE_OF` | `ReviewGate` or `Claim` -> `Claim` or `Media` | A review gate blocks public use. | `block_reason`, `required_review_owner`, `status`. |
| `HAS_CONFIDENCE` | `Claim`, `Media`, `Observation`, or `Event` -> `ConfidenceAssessment` | Assigns a Research confidence label. | `assessment_date`, `basis`. |
| `HAS_PUBLICNESS_TIER` | `Claim`, `Media`, `Species`, `Event`, or `Observation` -> `PublicnessTier` | Applies publicness rule. | `tier_basis`, `review_required`. |
| `REQUIRES_REVIEW` | `Claim`, `Media`, `Species`, or `Event` -> `ReviewGate` | Public or import use requires review. | `trigger`, `review_owner`, `minimum_evidence_needed`. |
| `DEPICTS` | `Media` -> `Species`, `Biome`, `Observation`, or `Event` | Media visually depicts a subject. | `visual_confidence`, `timestamp_start`, `timestamp_end`, `caption_status`. |
| `CONTEXT_FOR` | `Species`, `Observation`, `Claim`, or `Event` -> `Claim` or `Event` | Background context, not direct proof. | `context_type`, `not_proof_of`. |
| `CONTRADICTS_OR_LIMITS` | `Claim` -> `Claim` | One claim limits or contradicts another. | `limitation_note`, `confidence_label`. |

## Required Cross-Cutting Properties

Every first-pilot node and edge should carry these properties unless impossible:

| Property | Required purpose |
|---|---|
| `source_set_id` | Ties all graph material to the bounded Lake Post-Seal seed. |
| `derived_only` | Must be `true`; prevents treating the graph as canonical. |
| `canonical_record_type` | Identifies the source table or file class when applicable. |
| `canonical_record_id` | Preserves canonical id without creating a write target. |
| `source_doc_path` | Points to the source packet, Research note, or media reference. |
| `source_doc_section` | Enables audit back to the exact section or table when possible. |
| `evidence_basis` | `direct_record`, `packet_association`, `research_validation`, `media_reference`, `inference`, or `proposed_review`. |
| `confidence_label` | One active Research uncertainty label. |
| `uncertainty_note` | Plain-language caveat. |
| `observed_vs_inferred_status` | Separates observation from inference, plan, speculation, or proposal. |
| `publicness_tier` | Claim/media/public routing status. |
| `public_use_status` | Whether it can be used publicly, needs review, is internal only, raw evidence only, or blocked. |
| `review_status` | Current review state. |
| `review_owner` | Research, Content, App, Website, Company, or none. |
| `do_not_say` | Required when a likely downstream overclaim exists. |
| `last_source_check_date` | Date of the source check used by this graph seed. |

## Claim Review Rules For Public Use

### Labels That Require Research Review Before Public Use

Claims with these labels require Research review before public use:

- `Likely`
- `Possible`
- `Speculative`
- `Unknown`
- `Needs microscopy`
- `Needs expert confirmation`
- `Do not claim publicly yet`

`Confirmed` claims still require Research review if they are being used to support a stronger derived claim, a public media caption, a species-card status change, publicness promotion, chronology change, causation claim, establishment claim, stability claim, or graph import rule.

### Pilot Claims That Require Review Before Public Use

| Claim pattern | Required review reason |
|---|---|
| `Daphnia ambigua` as species-level ID | Requires microscopy or expert confirmation; public label should remain `Daphnia sp.`. |
| Daphnia establishment, reproduction, durable persistence, or population status stronger than unresolved | Establishment is not resolved by the packet. |
| Daphnia caused lake clearing | Causation is not proven; clearing has multiple plausible contributors. |
| Lake food web is complete, stable, balanced, or sustainable | Food-web completion remains unresolved/advanced, not confirmed. |
| Ghost Shrimp juvenile recruitment, second generation, or self-sustaining population | Breeding is confirmed; recruitment is unconfirmed. |
| Mesostoma as a public primary subject or major-impact predator outcome | Predator-pressure context is internal/open-loop by default. |
| Crayfish controlled Mesostoma | Hypothesis/open-loop context, not observed outcome. |
| Moina reproduction or establishment | Suspected/context only unless separately reviewed. |
| Ostracods are gone, extirpated, or declined because of Mesostoma | Observation and causation are unresolved. |
| Chronology changes from publish date to event date/window | This is a data-model and review question, not an approved structured edit. |
| Media captions that identify Daphnia, Mesostoma, Ghost Shrimp zoea, Moina, or mixed microcrustaceans | Requires frame-level Research review and publicness check. |
| Public profile activation or publicness promotion for unreviewed species | Requires separate species-readiness review. |

## What Must Be Excluded From The First Graph Seed

- Any Supabase write, Planner write, graph import, graph database creation, or App behavior change.
- Any source outside the bounded proof case unless explicitly approved as context.
- Observations outside `170-178` unless explicitly approved as context records for the seed.
- Species outside Flagfish `24`, Ghost Shrimp `67`, Freshwater amphipods `66`, Daphnia `164`, Mesostoma `167`, and Moina `180`, except as unmodeled text inside source notes.
- New ecological claims inferred from adjacency alone.
- General literature claims unless they are in an approved Research source note for this seed.
- Direct observation-to-pipeline or observation-to-chronicle edges represented as canonical links when only packet association has been verified.
- Public species-card text, final captions, final scripts, titles, thumbnails, platform metadata, campaign language, or polished website copy.
- Public media claims from unreviewed clips or unindexed still-image candidates.
- Global story-thread or open-loop graph expansion. Thread and loop ids may be cited as source context only if approved, but they should not become first-class graph nodes in this first seed unless Research explicitly adds them to the bounded source set.
- Population outcomes, mortality outcomes, causal mechanisms, or stability claims not directly supported by reviewed evidence.
- Hidden or implicit promotion from `internal_research_note` or `raw_evidence_only` into public-facing graph outputs.

## Minimum Validation Questions Before The Graph Can Be Trusted

1. Does every node and edge trace back to an approved source packet, Research note, proposed-write bundle note, media reference, or canonical record id?
2. Can the seed be regenerated without changing Supabase, App, Content, Company, or public-site state?
3. Are observations `170-178` represented as packet-derived evidence without falsely creating direct canonical pipeline/chronicle links?
4. Is every context record outside `170-178` explicitly listed and approved before inclusion?
5. Are Daphnia, Mesostoma, Ghost Shrimp zoea, Moina, ostracod, water-clearing, food-web-completion, and chronology claims review-gated?
6. Can a query distinguish observed facts from inference, planned work, speculation, and proposed public wording?
7. Can a query return only public-safe claims and exclude `Do not claim publicly yet`, `internal_research_note`, and `raw_evidence_only` material?
8. Does every public candidate claim have a confidence label, publicness tier, source note, and phrase-to-avoid guardrail?
9. Does every media node distinguish indexed `media_assets` from filesystem-only candidates and unverified references?
10. Are media timestamp ranges verified before any public or graph-import use?
11. Does each `DEPICTS` edge include visual confidence and a frame-level review requirement when organism ID is sensitive?
12. Are species labels broader than or equal to the evidence, especially `Daphnia sp.` instead of species-level certainty?
13. Are `Confirmed` source facts prevented from supporting stronger unconfirmed downstream claims by adjacency?
14. Is publicness modeled at claim and media level, not only at species level?
15. Are review owners clear enough that App, Content, Website, Company, and Research do not accidentally treat the graph as approval?
16. Is there a way to flag source drift when canonical records change after the source check date?
17. Are direct canonical records and Markdown interpretation separated in the data model?
18. Can the graph represent publish date and ecological event window without forcing a structured date edit?
19. Are "context for" edges prevented from being treated as "proof of" edges?
20. Does the graph have a clear discard/regenerate path if the ontology changes after the pilot?

## Pilot Acceptance Criteria

The first graph ontology is ready for an implementation proposal only when:

- The bounded source set is explicitly frozen for the pilot.
- Every node class above has a required-property schema.
- Every edge type above has provenance, confidence, and publicness properties.
- The Daphnia, Ghost Shrimp, Mesostoma, Moina, water-clearing, food-web-completion, and chronology gates are represented as review gates.
- The graph can answer: "What can be public?", "What is internal only?", "What evidence supports this?", "What must not be said?", and "What needs Research review?"
- Research confirms that no graph output is treated as canonical ecological data.

## Source-Backed Claims

| Claim | Confidence | Source Notes |
|---|---|---|
| The first graph proof case should be the Lake Post-Seal Living Atlas packet bounded to pipeline `338` and chronicle `30`. | Confirmed for this planning task | User direction in task `391`; Research validation and link-evidence notes cover the same packet. |
| The graph must remain derived only, with Supabase and Research records canonical. | Confirmed | User direction and Research source-of-truth rules. |
| Daphnia public use should stay at `Daphnia sp.` with establishment unresolved. | Confirmed as review boundary | Research validation note for pipeline `338`. |
| Ghost Shrimp breeding can be public only with juvenile recruitment unresolved. | Confirmed as review boundary | Research validation note for pipeline `338`. |
| Mesostoma public use remains gated by default. | Confirmed as review boundary | Research validation and link-evidence notes for pipeline `338`. |
| Media references must remain separate from public media approval. | Confirmed as review boundary | Link-evidence verification note for pipeline `338`. |

## Suggested Internal Query Tests

- Return all claims with `public_use_status = approved_with_caution`.
- Return all claims with `public_use_status = do_not_claim_publicly_yet`.
- Return every media node where `requires_frame_level_review = true`.
- Return all edges whose `evidence_basis = packet_association` and ensure they are not displayed as canonical links.
- Return every Daphnia-related claim and confirm species-level public ID is blocked.
- Return every claim about clearing, completion, stability, establishment, recruitment, or causation and confirm a review gate exists.
- Return all nodes seeded from sources outside the frozen source set; expected result should be none.

## Open Research Questions

- What exact list of context records outside observations `170-178` is explicitly approved for the first seed?
- Should story threads and open loops remain cited context only, or should a second pilot add them as first-class nodes?
- What checksum/versioning method should be used for source packets before import-ready status?
- Who owns final review status vocabulary if App later implements graph review workflows?
- Should `PublicnessTier`, `ConfidenceAssessment`, and `ReviewGate` be first-class nodes in the implementation, or controlled properties with optional history nodes?
- What is the durable model for publish date versus ecological event window across Living Atlas packets?
- What media verification standard is required before a `DEPICTS` edge can support public captions?
- What migration path removes or regenerates graph edges when canonical source records are corrected?

## Sources

- User request for Research task `391`, received May 14, 2026.
- `AGENTS.md`
- `memory/00-index.md`
- `memory/02-source-of-truth-and-write-policy.md`
- `memory/03-current-priorities-and-watchouts.md`
- `memory/04-cross-domain-handoffs.md`
- `memory/05-supabase-and-structured-record-rules.md`
- `skills/claim-check/SKILL.md`
- `skills/claim-check/reference/uncertainty-labels.md`
- `skills/content-handoff-brief/SKILL.md`
- `skills/content-handoff-brief/reference/content-handoff-rules.md`
- `research/research-briefs/2026-05-13-living-atlas-pipeline-338-research-validation.md`
- `research/research-briefs/2026-05-13-living-atlas-pipeline-338-link-evidence-verification.md`
