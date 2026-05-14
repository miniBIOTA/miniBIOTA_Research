---
id: operation_living_intelligence_task_393_graph_path_safety_2026_05_14
title: Operation Living Intelligence Task 393 Graph Path Evidence And Publicness Safety
type: research_planning_brief
status: complete
last_updated: 2026-05-14
for_agent: Research, App, Company, Content
tags: [research-brief, operation-living-intelligence, task-393, graph-paths, evidence-provenance, publicness, uncertainty, review-gates]
---
# Research Brief: Operation Living Intelligence Task 393 Graph Path Evidence And Publicness Safety

## Audience

Intended downstream agent or use: docs-only Research planning artifact defining how graph paths preserve evidence provenance, uncertainty, publicness, observed-vs-inferred status, and Research review status.

This artifact is candidate/derived only. It does not approve Supabase writes, graph imports, graph data creation, App behavior changes, Content writes, Web changes, media records, species edits, observation edits, chronicle edits, subject-link edits, open-loop edits, or Planner task closure.

Planner note for task `393`: keep public and internal claims separated.

## Plain-Language Summary

Graph traversal must not make claims stronger by connecting more nodes. A path is safe only if every hop keeps its own source, confidence, publicness, observed-vs-inferred status, and review state visible. The weakest or most restrictive hop controls the path's public use.

For Operation Living Intelligence, a path should answer: "What exactly supports this, what kind of support is it, how certain is it, is it observed or inferred, can it be public, and has Research reviewed it?" If any hop is internal, raw evidence, proposed, blocked, or review-required, the whole path must stop before public output or import readiness.

## Source Artifacts

| Source ID | Source type | Path | Use |
|---|---|---|---|
| `SRC391` | Research ontology brief | `M:\miniBIOTA\miniBIOTA_Research\research\research-briefs\2026-05-14-operation-living-intelligence-task-391-graph-ontology.md` | Node classes, edge types, required path properties, review gates, publicness tiers. |
| `SRC392` | Research graph-candidate relationship brief | `M:\miniBIOTA\miniBIOTA_Research\research\research-briefs\2026-05-14-operation-living-intelligence-task-392-lake-post-seal-graph-candidates.md` | Candidate Lake Post-Seal nodes, edges, blocked edges, validation questions, examples. |
| `SRC_UNCERTAINTY` | Research uncertainty labels | `skills/claim-check/reference/uncertainty-labels.md` | Standard confidence labels and public guidance. |
| `SRC_WRITE_POLICY` | Research write/source rules | `memory/02-source-of-truth-and-write-policy.md` | Derived-only and no-canonical-write boundaries. |

## Path Safety Rule

A graph path is safe for public or import use only when all of these are true:

- Every node and edge in the path has provenance back to an approved source document, canonical record pointer, or Research review artifact.
- Every hop keeps its original `confidence_label`; traversal cannot upgrade a label.
- The path-level confidence is the most restrictive confidence found along the path.
- The path-level publicness is the most restrictive publicness found along the path.
- `CONTEXT_FOR` and `QUALIFIES_CLAIM` edges cannot be treated as `SUPPORTS_CLAIM` edges.
- `BLOCKS_PUBLIC_USE_OF` or unresolved `REQUIRES_REVIEW` edges stop public output and import readiness.
- Observed, inferred, proposed, and approved statuses remain visible at both node and edge level.
- A path that includes any `internal_research_note`, `raw_evidence_only`, `blocked_public_use`, `candidate_not_imported`, `not_started`, `research_review_required`, or `needs_more_evidence` element cannot be emitted as public-ready or import-ready.

## Required Path Fields

Every readback path should return a path-level wrapper with these fields, even if the implementation stores them across nodes and edges:

| Field | Requirement |
|---|---|
| `path_id` | Stable readback id for the query result. |
| `path_query_purpose` | `public_output`, `internal_research`, `import_readiness`, `review_queue`, `evidence_audit`, or `debug`. |
| `source_set_id` | Must match the bounded seed, for example `oli_392_lake_post_seal_candidate_v1`. |
| `derived_only` | Must be `true` unless a separate approved canonical model exists. |
| `path_nodes` | Ordered node ids. |
| `path_edges` | Ordered edge ids. |
| `path_sources` | Unique source refs from every node and edge. |
| `path_evidence_basis` | Ordered list of edge evidence bases, not a single collapsed value. |
| `path_confidence_floor` | Most restrictive confidence label in the path. |
| `path_publicness_floor` | Most restrictive publicness tier in the path. |
| `path_review_floor` | Most restrictive review status in the path. |
| `path_observed_inferred_mix` | Set of statuses present: observed, inferred, proposed, approved, planned, speculative, unknown. |
| `public_output_allowed` | Boolean computed from publicness, confidence, observed/inferred status, and review gates. |
| `import_ready` | Boolean computed separately from public output. Public-safe does not mean import-ready. |
| `blocking_nodes` | Nodes preventing public output or import readiness. |
| `blocking_edges` | Edges preventing public output or import readiness. |
| `required_reviews` | Review gate ids and owners. |
| `safe_readback` | Human-readable sentence weaker than or equal to the path evidence. |
| `do_not_say` | Overclaims blocked by the path. |

## Evidence Provenance Across Paths

### Rule

Each path must preserve provenance hop-by-hop. The graph may summarize sources, but it must also be able to show exactly which node or edge contributed each source.

### Required Provenance On Nodes

Every node in a traversed path must expose:

- `node_id`
- `node_class`
- `canonical_record_type`, if applicable
- `canonical_record_id`, if applicable
- `source_doc_path`
- `source_doc_section`, if known
- `source_packet_refs`
- `last_source_check_date`
- `canonical_write_owner`
- `derived_only`

### Required Provenance On Edges

Every edge in a traversed path must expose:

- `edge_id`
- `edge_type`
- `from_node`
- `to_node`
- `evidence_basis`
- `association_basis`
- `source_doc_path`
- `source_doc_section`, if known
- `source_packet_refs`
- `edge_created_from`
- `derived_only`

### Path Provenance Readback

For a path like:

`OBS_177` -> `E_OBS_177_002` -> `CLM_DAPHNIA_INTRODUCED_SP` -> `E_EVT_006` -> `CLM_DAPHNIA_ESTABLISHMENT_UNRESOLVED`

the readback must say:

- Observation `177` is source-packet evidence, not a direct canonical pipeline/chronicle link.
- The Daphnia introduction claim is supported as broad `Daphnia sp.` introduction only.
- The unresolved-establishment claim qualifies the introduction claim.
- Sources include `SRC392`, `SRC391`, and the underlying task `392` provenance refs, especially `SRC_RESEARCH_VALIDATION` and `SRC_PACKET_338`.

## Confidence Survival Across Traversal

### Rule

Confidence labels do not average, stack, or improve by traversal. The path inherits the most restrictive relevant confidence label.

### Confidence Restriction Order

For path safety, treat labels in this order from least restrictive to most restrictive for public use:

1. `Confirmed`
2. `Likely`
3. `Possible`
4. `Speculative`
5. `Unknown`
6. `Needs microscopy`
7. `Needs expert confirmation`
8. `Do not claim publicly yet`

If multiple labels appear, the path-level label should be the most restrictive label that applies to the requested output. For example, a path can contain `Confirmed` source identity and still have `Do not claim publicly yet` at the outcome-claim level.

### Lake Post-Seal Examples

| Path | Correct confidence result | Why |
|---|---|---|
| `REC_CHRONICLE_30` -> `REC_PIPELINE_338` -> `CLM_SOURCE_IDENTITY` | `Confirmed` | Direct source identity and existing source relationship are verified. |
| `OBS_177` -> `CLM_DAPHNIA_INTRODUCED_SP` | `Confirmed` for broad introduction; species-level ID still gated | The path supports introduction of `Daphnia sp.`, not `Daphnia ambigua`. |
| `OBS_170` -> `CLM_DAPHNIA_CLEARING_BLOCKED` | `Do not claim publicly yet` | Opaque/clearing context cannot become Daphnia causation. |
| `MED_20260408_121519_MP4` -> `GATE_DAPHNIA_ID` -> `CLM_DAPHNIA_SPECIES_ID_BLOCKED` | `Needs microscopy` or frame-level Research review | Media visibility does not prove species-level ID. |
| `SPC_GHOST_SHRIMP_67` -> `CLM_GHOST_SHRIMP_BREEDING_ONLY` -> proposed recruitment claim | `Do not claim publicly yet` for recruitment | Confirmed breeding does not imply juvenile recruitment. |

## Publicness Survival Across Traversal

### Rule

Publicness can only narrow as a path grows. It cannot become more public because another node in the path is public-safe.

### Publicness Restriction Order

For path traversal, use this order from least restrictive to most restrictive:

1. `public_chronicle_safe`
2. `public_species_candidate`
3. `related_context_only`
4. `internal_research_note`
5. `raw_evidence_only`
6. `blocked_public_use`

The path-level publicness is the most restrictive publicness in the path.

### Public Output Rules

Public output is allowed only when:

- `path_publicness_floor` is `public_chronicle_safe` or approved `public_species_candidate`.
- No node or edge has `internal_research_note`, `raw_evidence_only`, or `blocked_public_use`.
- No unresolved `ReviewGate` appears in the path.
- No edge type in the path is `BLOCKS_PUBLIC_USE_OF`.
- `safe_readback` includes all required qualifiers.
- The path does not rely on `CONTEXT_FOR` as proof.

### Lake Post-Seal Examples

| Path | Publicness result | Safe readback |
|---|---|---|
| `MED_20260405_121055_MP4` -> `EVT_FLAGFISH_REMOVAL_2026_04_05` -> `CLM_FLAGFISH_REMOVED_MANAGEMENT` | `public_chronicle_safe` candidate, pending media/caption approval | "The flagfish was moved out as part of the food-web reset." |
| `SPC_DAPHNIA_164` -> `CLM_DAPHNIA_INTRODUCED_SP` -> `CLM_DAPHNIA_ESTABLISHMENT_UNRESOLVED` | `public_species_candidate` with required uncertainty | "Daphnia sp. were introduced, but establishment remains unresolved." |
| `MED_20260408_121519_MP4` -> `GATE_DAPHNIA_ID` | `internal_research_note` until reviewed | Public output blocked. |
| `SPC_MESOSTOMA_167` -> `CLM_MESOSTOMA_PRESSURE_INTERNAL` -> `GATE_MESOSTOMA_PUBLICNESS` | `internal_research_note` | Public output blocked unless Research + Company + Content approve context use. |
| `MED_20260503_101720_JPG` -> `E_MED_014` -> `GATE_CHRONOLOGY` | `blocked_public_use` as April source outcome proof | Cannot be used to prove Daphnia establishment, food-web completion, or April source outcome. |

## Observed, Inferred, Proposed, And Approved Status

### Rule

Observed-vs-inferred status must live on both nodes and edges. A path readback must show the mix rather than collapse it to one status.

### Status Values

Use these path-visible values:

| Status | Meaning | Public/import consequence |
|---|---|---|
| `observed` | Direct observation or direct record fact. | Can support claims only at the same scope. |
| `observed_plus_interpretation` | Observation plus local interpretation. | Requires qualifier and often review. |
| `inferred_from_observation` | Mechanism, causation, chronology, or role inferred from observation. | Cannot be public unless reviewed and qualified. |
| `source_interpretation` | Interpretation from packet or Research note. | Must carry source and review context. |
| `proposed` | Suggested relationship, date model, public link, or cleanup. | Not public or import-ready. |
| `approved_for_internal_use` | Research accepts for internal navigation. | Not automatically public. |
| `approved_for_public_candidate` | May be prepared for public use with caveats. | Still not final public copy or media approval. |
| `blocked` | Explicit stop condition. | No public use or import readiness. |
| `unknown` | Evidence not reviewed or unclear. | Public output blocked except "unknown" wording. |

### Lake Post-Seal Examples

| Node or edge | Status | Safe handling |
|---|---|---|
| `EVT_PUBLICATION_2026_04_17` | `observed` | Can say the source/chronicle uses April 17, 2026. |
| `EVT_ECO_WINDOW_2026_03_12_TO_04_08` | `proposed` / `inferred_from_observation` | Can be internal chronology question only. |
| `OBS_170` | `observed_plus_interpretation` | Can support opacity context, not Daphnia clearing causation. |
| `OBS_177` -> `EVT_INTRODUCTION_2026_04_08` | `observed` | Can support introduction, not establishment. |
| `OBS_178` -> `CLM_MESOSTOMA_PRESSURE_INTERNAL` | `inferred_from_observation` | Internal predator-pressure context unless reviewed. |
| `GATE_DIRECT_LINK_CLEANUP` | `proposed` / `not_started` | Blocks representing packet associations as canonical links. |

## Research Review Status And Blocking

### Rule

Research review gates are hard stops for public use and import readiness. A path that crosses a review gate must return the gate, owner, status, and required evidence.

### Review Status Order

Treat review statuses as follows:

| Review status | Public output | Import readiness |
|---|---|---|
| `resolved` with public approval | Allowed only within approved wording/scope | May be import-ready if all other import criteria pass. |
| `validated_for_public_candidate` | Candidate only; still not final public copy | Not import-ready unless implementation scope is also approved. |
| `validated_for_internal_use` | Internal only | Not public. Import only into internal candidate layer if approved. |
| `not_started` | Blocked | Blocked. |
| `research_review_required` | Blocked | Blocked. |
| `needs_more_evidence` | Blocked | Blocked. |
| `blocked` | Blocked | Blocked. |

### Blocking Gates From Task 392

| Gate | Blocks | Required safe behavior |
|---|---|---|
| `GATE_DAPHNIA_ID` | Daphnia species-level ID and ID-sensitive media captions | Use `Daphnia sp.` or "microcrustaceans" unless Research approves stronger ID. |
| `GATE_DAPHNIA_OUTCOME` | Daphnia establishment, reproduction, durable clearing, stable function | Keep establishment unresolved and causation unclaimed. |
| `GATE_GHOST_RECRUITMENT` | Juvenile recruitment, second generation, self-sustaining population | Say breeding/zoea only when supported; recruitment remains unconfirmed. |
| `GATE_MESOSTOMA_PUBLICNESS` | Mesostoma public subject/link/caption use | Internal unless Research + Company + Content approve cautious context. |
| `GATE_CHRONOLOGY` | Publish date vs ecological event-window modeling | Do not change or publicly reinterpret chronicle dates without review. |
| `GATE_MEDIA_CAPTION` | Public media records, captions, species images, visual proof use | Media candidates remain recommendations only. |
| `GATE_DIRECT_LINK_CLEANUP` | Direct observation-to-pipeline/chronicle links | Packet association cannot appear as canonical direct link. |

## Query And Readback Checks

### Public Output Safety Checks

A public-output query must fail closed unless all checks pass:

1. Return all nodes and edges in the path with `publicness_tier`.
2. Reject the path if any node or edge has `internal_research_note`, `raw_evidence_only`, or `blocked_public_use`.
3. Return all `ReviewGate` nodes reached within one hop of any path node or edge.
4. Reject the path if any gate status is `not_started`, `research_review_required`, `needs_more_evidence`, or `blocked`.
5. Return all `confidence_label` values in the path.
6. Reject or qualify the path if any label is not `Confirmed`.
7. Reject the path if any label is `Needs microscopy`, `Needs expert confirmation`, or `Do not claim publicly yet`.
8. Return all edge types.
9. Reject proof claims that rely on `CONTEXT_FOR`, `QUALIFIES_CLAIM`, `REQUIRES_REVIEW`, or `BLOCKS_PUBLIC_USE_OF` as if they were `SUPPORTS_CLAIM`.
10. Return `do_not_say` values and compare them against proposed output text.

### Import Readiness Checks

An import-readiness query must fail closed unless all checks pass:

1. Every node and edge has `derived_only = true` and the intended import target is a derived/candidate layer.
2. Every node and edge has source provenance and source version/checksum or a documented source version exception.
3. No path element has `candidate_not_imported` unless the import is explicitly a dry run.
4. No path element points to an unapproved context record.
5. No blocked edge is being imported as a positive relationship.
6. Proposed relationships have explicit approval status.
7. Packet-associated edges are not mapped to canonical direct links.
8. Publicness and confidence floors are stored on the imported path or recomputable from imported nodes/edges.
9. Review gates are imported or otherwise available to the query layer before public features can read the graph.
10. There is a delete/regenerate path if source records or ontology rules change.

### Evidence Audit Checks

An evidence-audit query should return:

- Path id.
- Every node id and class.
- Every edge id and type.
- Canonical record ids.
- Source paths and sections.
- Evidence basis for each edge.
- Confidence label for each node and edge.
- Publicness tier for each node and edge.
- Observed/inferred/proposed/approved status for each node and edge.
- Review gates reached and their owners.
- Blocking nodes/edges.
- Safe readback.
- Do-not-say list.

## Lake Post-Seal Path Examples

### Example 1: Safe Chronicle Frame

Path:

`REC_PIPELINE_338` -> `REC_CHRONICLE_30` -> `CLM_FOOD_WEB_RESET_FRAME`

Path result:

| Field | Value |
|---|---|
| Evidence | Direct source identity plus Research-validated chronicle frame. |
| Confidence floor | `Confirmed`. |
| Publicness floor | `public_chronicle_safe`. |
| Observed/inferred mix | Source identity observed; food-web reset frame is source interpretation validated as safe. |
| Review floor | Verified with caveats; no public overclaim allowed. |
| Safe readback | "Pipeline 338 / chronicle 30 can be treated as the Lake Post-Seal source pair for a Freshwater Lake food-web reset frame." |
| Do not say | "The lake is stable now"; "the food web is complete." |

### Example 2: Daphnia Introduction With Required Qualifier

Path:

`OBS_177` -> `CLM_DAPHNIA_INTRODUCED_SP` -> `CLM_DAPHNIA_ESTABLISHMENT_UNRESOLVED`

Path result:

| Field | Value |
|---|---|
| Evidence | Observation/pipeline packet evidence supports introduction; Research validation qualifies establishment. |
| Confidence floor | `Confirmed` for introduction and unresolved status; species-level ID remains separately gated. |
| Publicness floor | `public_species_candidate`. |
| Observed/inferred mix | Introduction observed; establishment status is Research review conclusion. |
| Review floor | Public wording candidate only; Daphnia ID/outcome gates remain active. |
| Safe readback | "Daphnia sp. were introduced, but establishment remains unresolved." |
| Do not say | "Daphnia ambigua"; "Daphnia established"; "Daphnia cleared the lake." |

### Example 3: Daphnia Media Block

Path:

`MED_20260408_121519_MP4` -> `GATE_DAPHNIA_ID` -> `CLM_DAPHNIA_SPECIES_ID_BLOCKED`

Path result:

| Field | Value |
|---|---|
| Evidence | Media candidate exists and is ID-sensitive. |
| Confidence floor | `Needs microscopy` or frame-level Research review. |
| Publicness floor | `internal_research_note` / `blocked_public_use` for species-level ID. |
| Observed/inferred mix | Visual evidence exists; ID stronger than microcrustacean/Daphnia sp. is unapproved. |
| Review floor | `research_review_required`. |
| Safe readback | "This clip may be useful for internal Daphnia/microcrustacean review, but it cannot support public species-level ID." |
| Do not say | "This shows Daphnia ambigua"; "this proves Daphnia established." |

### Example 4: Ghost Shrimp Breeding Does Not Become Recruitment

Path:

`SPC_GHOST_SHRIMP_67` -> `CLM_GHOST_SHRIMP_BREEDING_ONLY` -> `GATE_GHOST_RECRUITMENT`

Path result:

| Field | Value |
|---|---|
| Evidence | Research validation supports breeding/zoea distinction. |
| Confidence floor | `Confirmed` for breeding; `Unknown` or `Do not claim publicly yet` for recruitment. |
| Publicness floor | `public_species_candidate` with recruitment block. |
| Observed/inferred mix | Breeding observed/structured; recruitment is unresolved. |
| Review floor | Recruitment gate blocks stronger claims. |
| Safe readback | "Ghost Shrimp breeding is confirmed, but juvenile recruitment is unconfirmed." |
| Do not say | "second generation"; "self-sustaining"; "juveniles survived." |

### Example 5: Mesostoma Stays Internal

Path:

`OBS_178` -> `CLM_MESOSTOMA_PRESSURE_INTERNAL` -> `GATE_MESOSTOMA_PUBLICNESS`

Path result:

| Field | Value |
|---|---|
| Evidence | Mesostoma correction and predator-pressure tension are relevant internal context. |
| Confidence floor | `Likely` for predator-pressure interpretation. |
| Publicness floor | `internal_research_note`. |
| Observed/inferred mix | Correction observed/reviewed; predator pressure is inferred risk context. |
| Review floor | Research + Company + Content review required before public use. |
| Safe readback | "Mesostoma is internal predator-pressure context for the packet." |
| Do not say | "Mesostoma ate the Daphnia"; "Mesostoma is a primary public chronicle subject." |

### Example 6: Direct Link Cleanup Block

Path:

`OBS_170` -> proposed direct observation-to-pipeline edge -> `REC_PIPELINE_338`

Path result:

| Field | Value |
|---|---|
| Evidence | Task `392` says observations are packet-associated, not directly linked by canonical fields. |
| Confidence floor | `Confirmed` for missing direct link caveat. |
| Publicness floor | `internal_research_note`. |
| Observed/inferred mix | Link absence is verification finding; direct link is proposed cleanup only. |
| Review floor | `GATE_DIRECT_LINK_CLEANUP` not started. |
| Safe readback | "Observation 170 is packet-associated evidence for pipeline 338, not a verified direct canonical observation-pipeline link." |
| Do not say | "Observation 170 is linked to pipeline 338 in Supabase" unless a later approved write creates that link. |

## Failure Cases

| Failure case | Bad traversal behavior | Correct behavior |
|---|---|---|
| Public node washes internal node | A path starts at `REC_CHRONICLE_30` and passes through `CLM_MESOSTOMA_PRESSURE_INTERNAL`, then returns Mesostoma as public context. | The `internal_research_note` publicness floor blocks public output. |
| Confirmed source identity upgrades inferred outcome | `REC_PIPELINE_338` is confirmed, so the graph treats all packet claims as confirmed. | Source identity confidence stays separate from claim confidence. |
| Context edge becomes proof edge | `OBS_171 CONTEXT_FOR CLM_FOOD_WEB_RESET_FRAME` becomes proof that plant shift caused algae opacity. | `CONTEXT_FOR` remains context and requires mechanism review for public causal wording. |
| Introduction becomes establishment | `OBS_177 SUPPORTS_CLAIM CLM_DAPHNIA_INTRODUCED_SP` is traversed into a Daphnia establishment claim. | `CLM_DAPHNIA_ESTABLISHMENT_UNRESOLVED` and `GATE_DAPHNIA_OUTCOME` block establishment. |
| Media visibility becomes species ID | Daphnia/microcrustacean clips become public `Daphnia ambigua` proof. | `GATE_DAPHNIA_ID` blocks species-level ID. |
| Breeding becomes recruitment | Ghost Shrimp zoea evidence becomes juvenile recruitment. | `GATE_GHOST_RECRUITMENT` blocks recruitment and self-sustaining claims. |
| Later comparison becomes April outcome proof | `MED_20260503_101720_JPG` proves the April source arc resolved. | Later water-state media remains context and cannot prove Daphnia establishment or food-web completion. |
| Proposed chronology becomes canonical date | `EVT_ECO_WINDOW_2026_03_12_TO_04_08` changes chronicle event date. | `GATE_CHRONOLOGY` blocks date edits and public reinterpretation. |
| Packet association becomes canonical link | Observations `170-178` are shown as direct pipeline/chronicle links. | `CLM_OBS_DIRECT_LINK_MISSING` and `GATE_DIRECT_LINK_CLEANUP` block canonical link claims. |
| Blocked edges hidden from query result | Query returns only positive path and suppresses blocking gates. | Safe readback must include blocking nodes/edges and required reviews. |

## Minimum Safe Readback Template

Any graph path readback should use this structure:

```text
Path status: [public_allowed / internal_only / blocked / import_not_ready]
Safe claim: [weaker-than-or-equal-to evidence]
Evidence: [node ids, edge ids, source refs]
Confidence floor: [label]
Publicness floor: [tier]
Observed/inferred/proposed mix: [statuses]
Review status: [resolved / required / blocked]
Blocked by: [gate ids or none]
Do not say: [guardrails]
Canonical writes implied: none
```

## Implementation Guardrails For App/Graph Consumers

- Public queries must default to excluding internal, raw, blocked, review-required, and proposed material.
- Internal Research queries may include blocked and raw material, but must visibly label it.
- Import-readiness queries must be separate from public-output queries.
- A graph UI should show publicness and review state on every path, not only on the terminal claim.
- Any path with a `ReviewGate` should show the owner and required evidence.
- Any path with mixed observed/inferred/proposed statuses should show the most cautious safe readback.
- Blocked edges should remain queryable as guardrails even if not imported as positive graph data.
- Candidate path output must never be treated as final script, caption, website copy, media approval, species-card update, or canonical ecological record.

## Validation Questions Before Using Graph Paths

1. Does the query return all nodes and edges, not only the terminal claim?
2. Does the query return provenance for every hop?
3. Does the query preserve each hop's confidence label?
4. Does the query compute and display the confidence floor?
5. Does the query preserve publicness for every hop?
6. Does the query compute and display the publicness floor?
7. Does the query expose observed, inferred, proposed, approved, blocked, and unknown statuses?
8. Does the query expose every review gate reached by the path?
9. Does the query fail closed when a review gate is unresolved?
10. Does the query distinguish `SUPPORTS_CLAIM`, `CONTEXT_FOR`, `QUALIFIES_CLAIM`, `REQUIRES_REVIEW`, and `BLOCKS_PUBLIC_USE_OF`?
11. Does the query show blocked edges and do-not-say guardrails?
12. Does the query prevent public output from `internal_research_note`, `raw_evidence_only`, and `blocked_public_use` material?
13. Does the query prevent import readiness from proposed or review-required relationships?
14. Does the query keep packet-derived associations separate from canonical direct links?
15. Does the query prevent confirmed source identity from upgrading uncertain ecological claims?
16. Does the query produce a safe readback sentence no stronger than the weakest path element?
17. Does the query retain source version/checksum requirements before import-readiness claims?
18. Does the query show when a path is useful internally but unsafe publicly?
19. Does the query make public/internal separation explicit enough for Content and Website consumers?
20. Does the query report "no safe public path" rather than silently dropping blockers and returning a misleading public answer?

## Open Questions

- Should blocked edges be stored in the graph as first-class guardrail edges, or kept in Research Markdown and injected into readback checks?
- Who owns final review-status transitions if App later gives users a graph review workflow?
- What exact source versioning or checksum rule should be required before a path can ever be marked import-ready?
- Should public-output queries require an explicit `purpose = public_output` parameter so internal paths cannot be accidentally reused publicly?
- How should App display mixed-status paths compactly without hiding the evidence and review gates?
- Should graph paths support a formal "confidence floor" enum, or recompute the floor from node/edge labels every time?
- Should `validated_for_public_candidate` ever be enough for Website-visible output, or should public surfaces require a separate Content/Web approval field?

## Sources

- User request for Research task `393`, received May 14, 2026.
- `M:\miniBIOTA\miniBIOTA_Research\research\research-briefs\2026-05-14-operation-living-intelligence-task-391-graph-ontology.md`
- `M:\miniBIOTA\miniBIOTA_Research\research\research-briefs\2026-05-14-operation-living-intelligence-task-392-lake-post-seal-graph-candidates.md`
- `M:\miniBIOTA\miniBIOTA_Research\skills\claim-check\reference\uncertainty-labels.md`
- `M:\miniBIOTA\miniBIOTA_Research\memory\02-source-of-truth-and-write-policy.md`
