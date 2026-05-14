---
id: operation_living_intelligence_task_394_stage_3_pilot_question_evaluation_2026_05_14
title: Operation Living Intelligence Task 394 Stage 3 Pilot Question Evaluation
type: research_evaluation_brief
status: complete
last_updated: 2026-05-14
for_agent: Research, App, Company, Content
tags: [research-brief, operation-living-intelligence, task-394, graph-evaluation, stage-3, pilot-questions, lake-post-seal]
---
# Research Brief: Operation Living Intelligence Task 394 Stage 3 Pilot Question Evaluation

## Audience

Intended downstream agent or use: docs-only Research evaluation of whether graph traversal improves at least 7 of the 10 Stage 3 pilot questions for the Lake Post-Seal Living Atlas proof case.

This artifact does not approve Supabase writes, graph imports, graph data creation, App behavior changes, Content writes, Web changes, media records, species edits, observation edits, chronicle edits, subject-link edits, open-loop edits, or Planner task closure.

Planner note for task `394`: continue only if the pilot beats Markdown/Supabase lookup in real use.

## Evaluation Standard

This evaluation asks whether the task `391` ontology, task `392` candidate graph, and task `393` path-safety rules improve Research/App/Content use compared with reading Markdown packets plus Supabase records manually.

A question counts toward the 7/10 pass condition only if the graph-candidate model improves at least two of these:

- Faster lookup of connected evidence.
- Clearer public/internal separation.
- Safer uncertainty and review-gate handling.
- Better provenance/readback than a human scanning multiple Markdown/Supabase sources.
- Lower risk of turning packet association, context, or inference into confirmed canonical ecology.

The graph does not need to be import-ready to pass this planning evaluation. It must, however, remain derived-only and must not imply canonical writes.

## Summary Result

Pass count: `8 / 10`.

Recommendation: continue, but only to a no-write dry-run/readback prototype or another docs-only design pass. Do not proceed to live graph import, canonical writes, public rendering, or App behavior changes until the two weak areas are revised: public surface reuse mapping and measured real-use speed.

The graph-candidate model beats Markdown/Supabase lookup most clearly for claim safety, source provenance, observed-vs-inferred separation, review gates, species caveats, structured-write approval boundaries, and media-candidate boundaries. It is weaker for "which public pages can reuse this?" because Website/Content surface targets are not yet modeled, and "faster than Markdown/Supabase" remains plausible but unproven without a dry-run UI or query readback.

## Scorecard

| # | Pilot question | Result | Counts toward 7/10? | Main reason |
|---:|---|---|---|---|
| 1 | What evidence supports saying the lake changed after sealing or fish removal? | Pass | Yes | Graph paths can connect source, chronicle, observations, claims, and caveats without forcing causation. |
| 2 | Which species are connected to the Lake Post-Seal event, and how? | Pass | Yes | Candidate species nodes and chronicle-subject edges make roles and publicness visible. |
| 3 | Which claims are public-safe, uncertain, internal-only, or still review-needed? | Strong pass | Yes | Claim nodes, publicness tiers, and review gates are the graph's clearest improvement. |
| 4 | Which observations, source packets, media references, and Research notes support each claim? | Strong pass | Yes | Provenance paths are clearer than manually cross-reading packet, validation, link verification, and media notes. |
| 5 | Which public pages, chronicle entries, or content items could safely reuse the evidence? | Partial/fail | No | Chronicle and pipeline reuse are visible; actual Website page/content surface mapping is not modeled. |
| 6 | Which relationships are observed versus inferred? | Strong pass | Yes | Task `393` path rules make observed/inferred/proposed status path-visible. |
| 7 | Which Daphnia, Ghost Shrimp, Flagfish, amphipod, Mesostoma, or Moina facts still need caveats? | Strong pass | Yes | Species nodes, claim nodes, gates, and do-not-say lists make caveats queryable. |
| 8 | Which source packet facts would require explicit structured write approval? | Pass | Yes | Blocked edges and review gates clearly identify write-approval boundaries. |
| 9 | Which media references are useful but still not canonical media metadata? | Pass | Yes | Media nodes distinguish indexed assets, filesystem candidates, recommendations, and blocked proof use. |
| 10 | Does graph traversal make the packet easier, safer, or faster than Markdown/Supabase lookup alone? | Partial pass | Yes, provisional | Safer/easier yes; faster needs dry-run proof. Counts because safety and readback improve materially. |

## Question Evaluations

### 1. What evidence supports saying the lake changed after sealing or fish removal?

Assessment: Pass.

Graph improvement over Markdown/Supabase:
- The graph gives a direct path from source identity to chronicle frame to observations and claims, while preserving that some support is packet-derived rather than direct canonical linkage.
- It separates "the source documents a food-web reset" from stronger claims such as "the food web completed" or "Daphnia cleared the lake."

Relevant nodes, edges, and path-safety rules:
- Nodes: `REC_PIPELINE_338`, `REC_CHRONICLE_30`, `REC_BIOME_1`, `OBS_170`, `OBS_171`, `OBS_177`, `CLM_FOOD_WEB_RESET_FRAME`, `CLM_FOOD_WEB_COMPLETION_BLOCKED`.
- Edges: `E_PROV_003`, `E_PROV_004`, `E_OBS_170_001`, `E_OBS_171_001`, `E_OBS_177_001`, `E_EVT_010`.
- Task `393` rules: confidence floor, publicness floor, no context edge as proof, blocked path readback.

Blocked/review-gated/not import-ready:
- `CLM_FOOD_WEB_COMPLETION_BLOCKED` remains `blocked_public_use`.
- `OBS_171` remains mechanism/context and should not become proof of causation without review.
- Observation-to-pipeline/chronicle direct links remain blocked by `GATE_DIRECT_LINK_CLEANUP`.

Failure mode:
- Traversal could overstate "lake changed" into "lake stabilized" or "food web completed" if `CLM_FOOD_WEB_RESET_FRAME` is allowed to absorb blocked outcome claims.

Counts toward pass: Yes.

### 2. Which species are connected to the Lake Post-Seal event, and how?

Assessment: Pass.

Graph improvement over Markdown/Supabase:
- Candidate species nodes and `ABOUT_SPECIES` edges make subject roles visible without scanning chronicle subject-link tables and Research caveats separately.
- The graph can show that Flagfish, Daphnia, Ghost Shrimp, and amphipods are connected differently, while Mesostoma and Moina remain bounded/gated in this seed.

Relevant nodes, edges, and path-safety rules:
- Nodes: `SPC_FLAGFISH_24`, `SPC_GHOST_SHRIMP_67`, `SPC_AMPHIPODS_66`, `SPC_DAPHNIA_164`, `SPC_MESOSTOMA_167`, `SPC_MOINA_180`.
- Edges: `E_SUBJ_001`, `E_SUBJ_002`, `E_SUBJ_003`, `E_SUBJ_004`, `E_SUBJ_005`, `E_SUBJ_006`.
- Task `393` publicness floor and review-gate blocking rules.

Blocked/review-gated/not import-ready:
- Mesostoma public subject handling is blocked by `GATE_MESOSTOMA_PUBLICNESS`.
- Moina public promotion is blocked by review need and out-of-seed later evidence.
- Species outside the user-bounded list, including `65`, `169`, and `25`, are excluded from this first seed despite existing chronicle subject links.

Failure mode:
- Traversal could imply all species connected to chronicle `30` are equally public-safe or equally important. The path must preserve `major_impact`, `context`, `internal`, and `blocked` distinctions.

Counts toward pass: Yes.

### 3. Which claims are public-safe, uncertain, internal-only, or still review-needed?

Assessment: Strong pass.

Graph improvement over Markdown/Supabase:
- This is the strongest reason to continue the pilot. Claim nodes, publicness tiers, confidence labels, review gates, and blocked edges make claim safety queryable.
- Manual Markdown lookup can answer the same question, but it requires reading multiple sections and remembering caveats. The graph model makes caveats structural.

Relevant nodes, edges, and path-safety rules:
- Nodes: `CLM_FOOD_WEB_RESET_FRAME`, `CLM_FLAGFISH_REMOVED_MANAGEMENT`, `CLM_DAPHNIA_INTRODUCED_SP`, `CLM_DAPHNIA_ESTABLISHMENT_UNRESOLVED`, `CLM_DAPHNIA_SPECIES_ID_BLOCKED`, `CLM_DAPHNIA_CLEARING_BLOCKED`, `CLM_GHOST_SHRIMP_BREEDING_ONLY`, `CLM_MESOSTOMA_PRESSURE_INTERNAL`, `CLM_MOINA_CONTEXT_ONLY`, `CLM_FOOD_WEB_COMPLETION_BLOCKED`, `CLM_CHRONOLOGY_REVIEW`, `CLM_MEDIA_APPROVAL_SEPARATE`.
- Gates: `GATE_DAPHNIA_ID`, `GATE_DAPHNIA_OUTCOME`, `GATE_GHOST_RECRUITMENT`, `GATE_MESOSTOMA_PUBLICNESS`, `GATE_CHRONOLOGY`, `GATE_MEDIA_CAPTION`, `GATE_DIRECT_LINK_CLEANUP`.
- Task `393` public-output safety checks.

Blocked/review-gated/not import-ready:
- Daphnia species-level ID, Daphnia establishment/clearing, Ghost Shrimp recruitment, Mesostoma publicness, chronology edits, and media captions remain blocked or review-required.
- `public_species_candidate` does not equal final public copy or website readiness.

Failure mode:
- If a public query returns only allowed claims and hides blocked companion claims, downstream agents may miss required "do not say" boundaries.

Counts toward pass: Yes.

### 4. Which observations, source packets, media references, and Research notes support each claim?

Assessment: Strong pass.

Graph improvement over Markdown/Supabase:
- Candidate paths show source packet, Research validation, link verification, observation, media, and claim relationships in one readback.
- This materially improves provenance clarity over manually cross-reading task `391`, `392`, validation notes, link verification notes, and the Content packet.

Relevant nodes, edges, and path-safety rules:
- Source nodes: `SP_PACKET_338`, `SP_RESEARCH_VALIDATION`, `SP_LINK_VERIFY`, `SP_391_ONTOLOGY`.
- Observation nodes: `OBS_170-OBS_178`.
- Media nodes: `MED_20260408_082108_JPG`, `MED_20260405_121055_MP4`, `MED_20260408_121519_MP4`, `MED_20260419_212350_MP4`, and others in task `392`.
- Edges: all `E_OBS_*`, `E_MED_*`, `E_PROV_*`.
- Task `393` required path fields and evidence audit checks.

Blocked/review-gated/not import-ready:
- Some provenance lacks exact source-section anchors/checksums; this blocks import readiness, not usefulness as a docs-only evaluation.
- Media references remain recommendations, not canonical media records/captions.

Failure mode:
- A graph readback that summarizes `path_sources` without hop-by-hop provenance could hide which source supports which part of the claim.

Counts toward pass: Yes.

### 5. Which public pages, chronicle entries, or content items could safely reuse the evidence?

Assessment: Partial/fail for pass count.

Graph improvement over Markdown/Supabase:
- The graph improves chronicle/source reuse clarity for `REC_CHRONICLE_30` and `REC_PIPELINE_338`.
- It can identify `public_chronicle_safe` and cautious `public_species_candidate` claims.
- It does not yet model concrete Website page ids, species-card destinations, public page components, Content task outputs, or final public-copy approval states.

Relevant nodes, edges, and path-safety rules:
- Nodes: `REC_CHRONICLE_30`, `REC_PIPELINE_338`, `CLM_FOOD_WEB_RESET_FRAME`, `CLM_DAPHNIA_INTRODUCED_SP`, `CLM_GHOST_SHRIMP_BREEDING_ONLY`, `CLM_MEDIA_APPROVAL_SEPARATE`.
- Task `393` public-output safety checks and publicness floor rules.

Blocked/review-gated/not import-ready:
- Website/Web page reuse is not modeled.
- Content final-use surfaces are not modeled.
- Media captions and species-card public text remain separate approvals.

Failure mode:
- Traversal could answer "public-safe claim exists" as if it meant "this website page or species card may now use it." That would overstep Research and Content/Web ownership.

Counts toward pass: No.

Needed revision:
- Add a later noncanonical `PublicSurfaceCandidate` or `ReuseTarget` model only after Content/Web ownership rules are defined.

### 6. Which relationships are observed versus inferred?

Assessment: Strong pass.

Graph improvement over Markdown/Supabase:
- Task `393` makes observed/inferred/proposed/approved status path-visible.
- This is safer than Markdown scanning because a query can fail closed when a path mixes observation with inference or proposal.

Relevant nodes, edges, and path-safety rules:
- Nodes: `OBS_170`, `OBS_171`, `OBS_177`, `OBS_178`, `EVT_PUBLICATION_2026_04_17`, `EVT_ECO_WINDOW_2026_03_12_TO_04_08`, `CLM_CHRONOLOGY_REVIEW`.
- Edges: `E_OBS_170_001`, `E_OBS_171_001`, `E_OBS_177_001`, `E_OBS_178_002`, `E_EVT_002`.
- Task `393` observed/inferred/proposed/approved status values.

Blocked/review-gated/not import-ready:
- Proposed ecological event window remains internal and not import-ready.
- Mechanism and predator-pressure interpretations require review before public use.

Failure mode:
- If the graph collapses path status to the terminal node, an inferred path could appear observed. Readbacks must show the whole observed/inferred mix.

Counts toward pass: Yes.

### 7. Which Daphnia, Ghost Shrimp, Flagfish, amphipod, Mesostoma, or Moina facts still need caveats?

Assessment: Strong pass.

Graph improvement over Markdown/Supabase:
- Caveats become queryable by species and claim rather than scattered across validation paragraphs.
- The model handles different caveat types: ID, establishment, recruitment, publicness, context-only, and framing.

Relevant nodes, edges, and path-safety rules:
- Daphnia: `SPC_DAPHNIA_164`, `CLM_DAPHNIA_INTRODUCED_SP`, `CLM_DAPHNIA_ESTABLISHMENT_UNRESOLVED`, `CLM_DAPHNIA_SPECIES_ID_BLOCKED`, `GATE_DAPHNIA_ID`, `GATE_DAPHNIA_OUTCOME`.
- Ghost Shrimp: `SPC_GHOST_SHRIMP_67`, `CLM_GHOST_SHRIMP_BREEDING_ONLY`, `GATE_GHOST_RECRUITMENT`.
- Flagfish: `SPC_FLAGFISH_24`, `CLM_FLAGFISH_REMOVED_MANAGEMENT`.
- Amphipods: `SPC_AMPHIPODS_66`, `E_SUBJ_004`.
- Mesostoma: `SPC_MESOSTOMA_167`, `CLM_MESOSTOMA_PRESSURE_INTERNAL`, `GATE_MESOSTOMA_PUBLICNESS`.
- Moina: `SPC_MOINA_180`, `CLM_MOINA_CONTEXT_ONLY`.

Blocked/review-gated/not import-ready:
- Daphnia ID/outcomes, Ghost Shrimp recruitment, Mesostoma public use, and Moina reproduction/establishment remain gated.
- Amphipods remain context-only.
- Flagfish requires careful "management/removal" framing.

Failure mode:
- A species page query could return the species node without walking to the caveat claims and gates. Species summaries must include adjacent blocking/caveat paths.

Counts toward pass: Yes.

### 8. Which source packet facts would require explicit structured write approval?

Assessment: Pass.

Graph improvement over Markdown/Supabase:
- Blocked edges and review gates make write-approval needs concrete.
- The graph helps separate "candidate relationship exists in packet" from "approved canonical write."

Relevant nodes, edges, and path-safety rules:
- Nodes: `CLM_OBS_DIRECT_LINK_MISSING`, `CLM_CHRONOLOGY_REVIEW`, `CLM_MEDIA_APPROVAL_SEPARATE`.
- Gates: `GATE_DIRECT_LINK_CLEANUP`, `GATE_CHRONOLOGY`, `GATE_MEDIA_CAPTION`, `GATE_MESOSTOMA_PUBLICNESS`.
- Blocked edges: `B_EDGE_001`, `B_EDGE_002`, `B_EDGE_008`, `B_EDGE_011`, `B_EDGE_013`, `B_EDGE_014`.
- Task `393` import-readiness checks.

Blocked/review-gated/not import-ready:
- Direct observation-to-pipeline/chronicle links.
- Chronicle date/event-window semantics.
- Mesostoma public subject link.
- Media records/captions/species images.
- Later observations beyond `178`.
- Threads/open loops as first-class nodes.

Failure mode:
- A graph importer could mistake a blocked edge list for a write to perform. Blocked edges must be explicitly typed as guardrails, not positive relationships.

Counts toward pass: Yes.

### 9. Which media references are useful but still not canonical media metadata?

Assessment: Pass.

Graph improvement over Markdown/Supabase:
- Media nodes and `E_MED_*` edges make candidate media, publicness, timestamp status, and caption gates visible together.
- Markdown alone contains the same information, but it is easier to miss the distinction between useful candidate and canonical media metadata.

Relevant nodes, edges, and path-safety rules:
- Nodes: `MED_20260408_082108_JPG`, `MED_20260405_121055_MP4`, `MED_20260408_140153_MP4`, `MED_20260408_121519_MP4`, `MED_20260419_212350_MP4`, `MED_20260408_161920_MP4`, `MED_20260503_101720_JPG`, `CLM_MEDIA_APPROVAL_SEPARATE`.
- Edges: `E_MED_001-E_MED_016`.
- Gates: `GATE_MEDIA_CAPTION`, `GATE_DAPHNIA_ID`, `GATE_GHOST_RECRUITMENT`, `GATE_MESOSTOMA_PUBLICNESS`.

Blocked/review-gated/not import-ready:
- Filesystem stills are not verified indexed `media_assets`.
- Daphnia/microcrustacean media, Ghost Shrimp zoea media, Mesostoma media, and mixed-organism closeups remain review-gated.
- No media record, caption, species image, or public asset is approved.

Failure mode:
- Traversal could treat `DEPICTS` as caption approval or proof-quality media. Task `393` must force media approval/readback checks.

Counts toward pass: Yes.

### 10. Does graph traversal make the packet easier, safer, or faster than Markdown/Supabase lookup alone?

Assessment: Partial pass, counts provisionally.

Graph improvement over Markdown/Supabase:
- Easier: yes, because the model centralizes connected nodes, edges, gates, and do-not-say guardrails.
- Safer: yes, because publicness floors, confidence floors, and review gates prevent internal/raw evidence from leaking into public outputs.
- Faster: not proven yet. A no-write dry-run or query readback prototype is needed before claiming speed improvement in real use.

Relevant nodes, edges, and path-safety rules:
- All candidate node and edge classes from task `392`.
- Task `393` safe readback template, public-output checks, import-readiness checks, and failure cases.

Blocked/review-gated/not import-ready:
- No actual graph traversal system exists yet.
- Source section anchors/checksums are not fully specified.
- Public surface reuse is under-modeled.
- The graph is not import-ready and must remain derived-only.

Failure mode:
- A prototype that returns attractive but incomplete paths could be faster while less safe. Speed must not count unless blockers, provenance, and caveats are visible by default.

Counts toward pass: Yes, provisionally, because ease and safety improve materially. Speed remains an implementation validation requirement before live use.

## Pass/Fail Count

Pass count: `8 / 10`.

Passing:
- Questions `1`, `2`, `3`, `4`, `6`, `7`, `8`, `9`.

Provisional pass:
- Question `10`, because safety/ease improve but speed remains unproven.

Not counted:
- Question `5`, because public page/content reuse mapping is not yet modeled clearly enough.

## Recommendation

Recommendation: continue.

Continue only to a no-write, derived-only dry-run/readback prototype or another docs-only design pass. The pilot clears the 7/10 threshold, but it should not move to live import or App behavior until these revision conditions are met:

- Add explicit public surface/reuse-target modeling or decide that Website/Content reuse remains outside the graph for now.
- Define source version/checksum requirements.
- Prove query readbacks expose blockers, confidence floors, publicness floors, observed/inferred mix, and do-not-say guardrails by default.
- Demonstrate that a no-write dry-run answers the pilot questions faster than Markdown/Supabase lookup without hiding caveats.
- Keep all canonical ecological records in Supabase/Research Markdown; graph output remains derived and disposable.

## Implementation Stop Conditions

Stop before implementation if any of these cannot be guaranteed:

- Public queries can accidentally return internal/raw/blocked evidence.
- `CONTEXT_FOR` edges can be treated as proof.
- Direct observation-to-pipeline/chronicle links can be implied from packet association.
- Review gates can be hidden or ignored in readbacks.
- Public surface reuse is inferred without Content/Web ownership approval.
- Media candidates can become canonical media metadata or captions without separate approval.

## Sources

- User request for Research task `394`, received May 14, 2026.
- `M:\miniBIOTA\miniBIOTA_Research\research\research-briefs\2026-05-14-operation-living-intelligence-task-391-graph-ontology.md`
- `M:\miniBIOTA\miniBIOTA_Research\research\research-briefs\2026-05-14-operation-living-intelligence-task-392-lake-post-seal-graph-candidates.md`
- `M:\miniBIOTA\miniBIOTA_Research\research\research-briefs\2026-05-14-operation-living-intelligence-task-393-graph-path-safety.md`

## Changed Files

- `research/research-briefs/2026-05-14-operation-living-intelligence-task-394-stage-3-pilot-question-evaluation.md`

## Verification

- Source context used during creation: task `391`, task `392`, and task `393`.
- Cleanup pass read-through performed on this artifact on `2026-05-14`.
- No graph import, Supabase write, App behavior change, Content/Web/media/species/observation/chronicle edit, or Planner update was performed.

## Not Changed

- Supabase records.
- App Planner tasks.
- Graph data/imports.
- App behavior.
- Content, Web, media, species, observation, chronicle, or Planner records.
- Canonical ecological records.

## Unresolved Questions

- Whether the next step should be another docs-only design pass or a no-write derived dry-run/readback prototype.
- How public surface reuse targets should be modeled without crossing Content/Web ownership.
- How real-use speed should be measured against Markdown/Supabase lookup.
