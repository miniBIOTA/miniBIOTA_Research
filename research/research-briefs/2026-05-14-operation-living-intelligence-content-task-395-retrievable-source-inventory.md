---
id: operation_living_intelligence_content_task_395_retrievable_source_inventory_2026_05_14
title: "Operation Living Intelligence Content Task 395 - Retrievable Source Inventory"
date: 2026-05-14
task_id: 395
type: content_planning_artifact
status: complete
last_updated: 2026-05-14
owners:
  - Content
  - Research
for_agent: Content, Research, App, Company, Raw Footage, Financials
related_research_tasks:
  - 391
  - 392
  - 393
  - 394
bounded_case: "Lake Post-Seal Living Atlas / content_pipeline.id 338 / chronicles.id 30"
write_scope: "Docs-only planning; no canonical writes"
tags: [content-planning, operation-living-intelligence, task-395, retrieval-inventory, living-atlas, pipeline-338, chronicle-30, lake-post-seal]
---

# Operation Living Intelligence Content Task 395 - Retrievable Source Inventory

## Purpose

Inventory the Content-owned and cross-domain source materials that should be retrievable for Operation Living Intelligence after the Research graph pilot passed the Stage 3 threshold at `8 / 10`.

This is a planning artifact only. It does not approve graph imports, vector ingestion, visual AI annotation, media metadata writes, App behavior, Planner updates, publication changes, or Supabase writes.

## Source Boundary

Use only bounded, explicitly named source material for the first retrievability design pass:

- Living Atlas / Lake Post-Seal source packet for `content_pipeline.id = 338` and `chronicles.id = 30`.
- Archived Content project notes for the published Lake Post-Seal longform.
- Prior Research OLI tasks `391-394`.
- Candidate footage references and media recommendation notes already named by the source packet.
- Content production setup notes and DaVinci workflow assumptions.
- Supabase IDs only as provenance pointers. Supabase remains canonical and was not written.

Do not use this inventory to discover or scan the full raw footage library.

## Ownership Rules

| Material class | Owner | Retrieval role | Write boundary |
|---|---|---|---|
| Final scripts, outlines, production notes, source packets, media recommendations | Content | Retrieval source, provenance, production context | Do not alter canonical Content records from this task |
| Species, observations, ecology claims, uncertainty labels, Research review state | Research + Supabase canonical records | Evidence safety and claim gates | Do not create ecological writes or stronger claims |
| Raw footage files and frame/timecode references | Raw Footage / Content | Candidate visual evidence references | Do not move files, scan media, or write metadata |
| App graph/vector/visual AI behavior | App | Future derived-only prototype design | Do not implement or change App behavior |
| Cross-domain approvals and resourcing | Company | Approval sequencing and operating constraints | Do not mark Planner tasks or create approvals |

## Candidate Retrievable Materials

| ID | Material | Source path or ID | Owner | Candidate feed | Publicness / review label | Notes |
|---|---|---|---|---|---|---|
| `CONTENT_PACKET_338` | Living Atlas source packet | `M:\miniBIOTA\miniBIOTA_Content\audits\living_atlas\source_packets\pipeline_338_chronicle_30_lake_post_seal_2026-05-12.md` | Content | Graph, vector retrieval, analytics | Internal; verified with caveats; review-needed before public reuse | Working packet and decision aid, not public-ready copy and not approval to write live records. |
| `RESEARCH_391` | First graph ontology | `research/research-briefs/2026-05-14-operation-living-intelligence-task-391-graph-ontology.md` | Research | Graph design, vector retrieval | Internal planning | Defines node, edge, provenance, publicness, confidence, and review properties. |
| `RESEARCH_392` | Lake Post-Seal graph candidates | `research/research-briefs/2026-05-14-operation-living-intelligence-task-392-lake-post-seal-graph-candidates.md` | Research | Graph design, vector retrieval | Internal planning | Candidate/derived relationships only. |
| `RESEARCH_393` | Graph path safety rules | `research/research-briefs/2026-05-14-operation-living-intelligence-task-393-graph-path-safety.md` | Research | Graph readback safety, vector retrieval | Internal planning | Separates public and internal claims during traversal. |
| `RESEARCH_394` | Stage 3 pilot evaluation | `research/research-briefs/2026-05-14-operation-living-intelligence-task-394-stage-3-pilot-question-evaluation.md` | Research | Analytics, go/no-go context, vector retrieval | Internal planning | Passed `8 / 10`; public surface mapping and real-use speed remain weak. |
| `ARCHIVE_PROJECT_338` | Archived Content video project | `M:\miniBIOTA\miniBIOTA_Content\video_projects\archive\2026-04_biome_lake-post-seal.md` | Content | Vector retrieval, graph provenance, analytics | Mixed: public script plus internal notes | Contains story spine, final script, production notes, session log, publish schedule, and production decisions. |
| `PIPELINE_338_POINTER` | Published content pipeline pointer | `content_pipeline.id = 338` | Supabase / Content | Graph source node pointer, analytics | Public source identity | Title: `My Lake Went Completely Opaque. So I Removed the Fish.` Published `2026-04-17`. URL: `https://youtu.be/lgmPWX9e-A0`. No writes approved. |
| `CHRONICLE_30_POINTER` | Chronicle pointer | `chronicles.id = 30` | Supabase / Research | Graph event pointer | Public with chronology caveat | Title: `Fish removal reopens the lake food web`. Event date semantics remain unresolved because ecological range appears broader than `2026-04-17`. |
| `OBS_170_178_POINTERS` | Observation provenance pointers | `observations.id = 170-178` | Supabase / Research | Graph evidence pointers | Mixed; claim-specific review needed | Candidate evidence only. Packet notes no direct `observations.pipeline_id=338` or `observations.chronicle_id=30` links. |
| `TRANSCRIPT_ROW_338_NULL` | Transcript availability note | `content_pipeline.id = 338`, `transcript = null` per source packet | Content / Supabase pointer | Retrieval gap | Excluded from transcript ingestion | Archived project final script is transcript-equivalent for planning, but no transcript row exists for ingestion. |
| `FINAL_SCRIPT_PROJECT_338` | Final delivered script | Section `9. Final Delivered Script` in `ARCHIVE_PROJECT_338` | Content | Vector retrieval, public wording comparison | Public-as-published; not canonical ecology | Retrievable as what the published episode said. Claims still need Research review before reuse as current facts. |
| `STORY_SPINE_PROJECT_338` | Story spine, draft notes, episode structure | Sections `1-8` in `ARCHIVE_PROJECT_338` | Content | Vector retrieval, graph provenance context | Internal; review-needed | Useful for intent, continuity, and production context. Draft notes may be superseded by Research validation. |
| `PRODUCTION_NOTES_PROJECT_338` | Production notes and session log | Sections `10-11` in `ARCHIVE_PROJECT_338` | Content | Vector retrieval, analytics, visual AI work queue | Internal; review-needed | Identifies footage categories, edit decisions, audio workflow, publish steps, and production constraints. |
| `PRIOR_TRANSCRIPT_TARGETS` | Earlier episode transcripts referenced by project log | Feb 28 longform `pipeline id = 4`; Feb 18 short; Feb 21 short; paths not located in this pass | Content | Future vector retrieval | Retrieval gap; review-needed | Session log says transcripts were pulled on `2026-04-08`, but this inventory did not locate durable transcript paths. |
| `CONTENT_PRODUCTION_SETUP` | Content capture/edit/export assumptions | `M:\miniBIOTA\miniBIOTA_Content\memory\05-production-setup.md` | Content | Vector retrieval, Markdown-only operating context | Internal | Workstation and capture assumptions for visual AI/media processing. Not ecological evidence. |
| `DAVINCI_TRACKER` | DaVinci workflow tracker | `M:\miniBIOTA\miniBIOTA_Content\skills\davinci-editing-support\reference\production-tracker.md` | Content | Vector retrieval, analytics, Markdown-only operating context | Internal | Includes stage names, naming conventions, template gaps, and edit workflow assumptions. |

## Candidate Footage And Media References

These are candidate references only. They are not media metadata writes, species image approvals, caption approvals, or public publication approvals.

| Media reference | Timecode / frame | Candidate use | Candidate feed | Publicness / review label | Notes |
|---|---:|---|---|---|---|
| `M:\miniBIOTA\miniBIOTA_Files\8. Raw Footage\Other Photos & Videos\Biomes\Freshwater Lake\20260408_082108.jpg` | Still | Opaque lake still | Visual AI candidate annotation, graph media reference, vector retrieval | Public candidate after approval; not indexed media metadata | File existence was noted by packet, but it was not indexed as `media_assets` at validation time. |
| `M:\miniBIOTA\miniBIOTA_Files\8. Raw Footage\Photos & Videos\2026\20260405_121055.mp4` | `00:03-00:19` | Flagfish transfer / retirement | Visual AI candidate annotation, graph media reference | Public candidate after approval | Avoid failure framing; keep as event evidence, not moralized species outcome. |
| `M:\miniBIOTA\miniBIOTA_Files\8. Raw Footage\Photos & Videos\2026\20260405_114948.mp4` | Wide frames near `00:00`, `01:15`, `02:45` | Pre-introduction opacity | Visual AI candidate annotation, graph media reference | Public candidate after approval | Close handling/capture sequence around `00:45-02:30` needs extra review. |
| `M:\miniBIOTA\miniBIOTA_Files\8. Raw Footage\Photos & Videos\2026\20260408_112539.mp4` | `00:00-00:13` | Field-search habitat | Visual AI candidate annotation, graph media reference | Public candidate after approval | Habitat context, not proof of species establishment. |
| `M:\miniBIOTA\miniBIOTA_Files\8. Raw Footage\Photos & Videos\2026\20260408_112606.mp4` | `00:02-00:11` | Field sampling | Visual AI candidate annotation, graph media reference | Public candidate after approval | Sampling context. |
| `M:\miniBIOTA\miniBIOTA_Files\8. Raw Footage\Photos & Videos\2026\20260408_114418.mp4` | `00:00-00:15` | Green-water field habitat | Visual AI candidate annotation, graph media reference | Public candidate after approval | Packet corrected original longer range to `00:00-00:15`. |
| `M:\miniBIOTA\miniBIOTA_Files\8. Raw Footage\Photos & Videos\2026\20260408_140153.mp4` | `00:45-00:55` | Organism/sample introduction | Visual AI candidate annotation, graph media reference | Public candidate after approval | Supports introduction context only, not establishment. |
| `M:\miniBIOTA\miniBIOTA_Files\8. Raw Footage\Photos & Videos\2026\20260408_121519.mp4` | `00:06-01:13` | Daphnia / microcrustacean sample | Visual AI candidate annotation only | Review-needed; ID-sensitive | Do not claim `Daphnia ambigua`, establishment, reproduction, or clearing. |
| `M:\miniBIOTA\miniBIOTA_Files\8. Raw Footage\Photos & Videos\2026\20260408_141102.mp4` | `00:00-00:24` | Post-introduction small organism | Visual AI candidate annotation only | Review-needed; high ID risk | Candidate visual context only. |
| `M:\miniBIOTA\miniBIOTA_Files\8. Raw Footage\Photos & Videos\2026\20260419_212350.mp4` | `00:06-01:09` | Ghost Shrimp zoea candidate | Visual AI candidate annotation only | Review-needed | Do not claim recruitment, survival, second generation, or establishment. |
| `M:\miniBIOTA\miniBIOTA_Files\8. Raw Footage\Photos & Videos\2026\20260408_161920.mp4` | `00:14-00:40` | Mesostoma close-up with eggs | Markdown-only or internal visual candidate | Internal-only unless Research + Company approve public handling | Open-loop context; public use gated. |
| `M:\miniBIOTA\miniBIOTA_Files\8. Raw Footage\Photos & Videos\2026\20260408_135213.mp4` | `00:00-01:35` | Mixed organism close-up | Markdown-only or internal visual candidate | Internal-only | Too mixed and ID-sensitive for public metadata or claims. |
| `M:\miniBIOTA\miniBIOTA_Files\8. Raw Footage\Photos & Videos\2026\20260408_112739.mp4` | `00:00-00:27` | Sample density / search context | Markdown-only or internal visual candidate | Internal-only | Search context, not public claim support. |
| `M:\miniBIOTA\miniBIOTA_Files\8. Raw Footage\Photos & Videos\2026\20260503_101720.jpg` | Still | Later water comparison | Markdown-only or internal visual candidate | Internal-only; not indexed media metadata | May be useful later, but does not prove outcomes for the first packet. |
| `M:\miniBIOTA\miniBIOTA_Files\8. Raw Footage\Photos & Videos\2026\20260501_071248.mp4` | `00:00-01:31` | Ghost Shrimp follow-up | Excluded from first retrieval seed | Not selected / not proof-quality | Ambiguous; should not seed public or graph proof claims. |

## Hardware And Local Compute Assumptions To Retrieve

These assumptions matter for Content production planning and future visual AI or media-processing prototypes. They are not ecological evidence.

| Assumption | Source | Retrieval role | Caveat |
|---|---|---|---|
| Primary capture is Samsung Galaxy S25 Ultra, UHD 4K, 60fps, vertical 9:16, H.264, HDR/HEVC disabled | `CONTENT_PRODUCTION_SETUP`, `DAVINCI_TRACKER` | Visual AI preprocessing assumptions; production context | Do not infer every historical clip has exactly this profile without file-level verification. |
| Common close-up tool is KEYWING 20x clip-on macro lens | `CONTENT_PRODUCTION_SETUP`, `DAVINCI_TRACKER` | Helps interpret macro footage limitations | Does not replace organism ID review. |
| Stabilization includes DJI Osmo Mobile 7, UBeesize phone tripod, Cayer BV30L tripod | `CONTENT_PRODUCTION_SETUP` | Production context | Not needed for ecological graph paths. |
| Audio uses DJI Mic Mini; narration usually recorded separately in post | `CONTENT_PRODUCTION_SETUP`, `ARCHIVE_PROJECT_338` | Production workflow retrieval | Useful for transcript/script alignment, not ecology. |
| Editing system is Windows 11 Pro with DaVinci Resolve Studio 20.3.2 Build 9 | `CONTENT_PRODUCTION_SETUP`, `DAVINCI_TRACKER` | Local processing assumptions | App should not assume DaVinci project access without explicit Content workflow design. |
| GPU is MSI SHADOW RTX 5060 Ti 16GB with CUDA enabled | `CONTENT_PRODUCTION_SETUP`, `DAVINCI_TRACKER` | Local visual AI and export capacity assumption | No OLI speed benchmark has been proven. Treat performance as unverified. |
| Media storage is a 10TB WD Red Plus HDD | `CONTENT_PRODUCTION_SETUP` | Local path and I/O planning | Backup drive is a high-priority gap before large batch processing. |
| Export standard is MP4 H.265/HEVC via NVIDIA, UHD 4K, 60fps, 80 Mbps variable bitrate, two-pass full | `CONTENT_PRODUCTION_SETUP`, `DAVINCI_TRACKER` | Output provenance / production analytics | Not a source-footage property. |
| Known watchouts include HEVC/HDR phone import color, auto white balance drift, audio jumps, and Shorts export recognition issues | `CONTENT_PRODUCTION_SETUP`, `DAVINCI_TRACKER`, `ARCHIVE_PROJECT_338` | Retrieval caveats for media processing and production QA | These are workflow risks, not reasons to alter media metadata. |

## Publicness And Review Classification

### Public-Safe Candidate Material

The following may be retrievable as public-facing source context, but only as candidate use until the relevant approval gate is passed:

- Published content identity for `content_pipeline.id = 338`: title, URL, and publish date.
- Chronicle identity for `chronicles.id = 30`, with chronology caveat retained.
- The final delivered script as what was published, not as current ecological truth.
- Public candidate media references listed in the source packet after caption, ID, and metadata approval.

### Internal-Only Material

Keep these out of public retrieval surfaces by default:

- Source packet working notes and proposed-write bundle notes.
- Story spine, draft notes, production notes, and session log details.
- Research graph design artifacts `391-394`.
- Content production setup and workstation assumptions.
- Mesostoma open-loop media and mixed-organism clips.
- Later comparison material that does not prove the packet's event claims.

### Raw Evidence Material

Retrieve only with provenance and review gates:

- Observation pointers `170-178`.
- Raw footage paths and timecodes.
- Field sampling clips.
- Daphnia, microcrustacean, ostracod, duckweed, Mesostoma, and Ghost Shrimp zoea visual references.

### Review-Needed Material

Require Research and/or Content review before public use:

- Daphnia and microcrustacean ID claims.
- Ghost Shrimp zoea and recruitment implications.
- Mesostoma public framing.
- Chronology around sealing, fish removal, field collection, and post-event change.
- Any media caption that names species or claims ecological outcomes.
- Any graph/vector readback that crosses from internal production notes into public output.

### Excluded From First Retrieval Seed

Exclude from the first retrievable seed:

- Full raw footage library scans.
- New media metadata, `media_assets`, or `species_images` writes.
- App import files, graph data, vector indexes, or visual AI annotations.
- Planner task updates.
- Canonical Content, Research, species, observation, chronicle, or public site edits.
- Ambiguous proof clips such as `20260501_071248.mp4` unless later review reclassifies them.

## Recommended Feed Routing

| Feed | Include | Exclude |
|---|---|---|
| Graph dry-run/readback | Source packet, canonical Supabase ID pointers, Research `391-394`, candidate media reference nodes, publicness/review labels | No graph import, no canonical ecological write, no public output generation |
| Vector retrieval | Source packet, archived project file, final script, story spine, production notes, Research briefs, production setup notes, DaVinci tracker | No transcript row for `338` until a transcript source exists; no full raw footage OCR/scan |
| Visual AI candidate annotations | Only explicitly listed candidate media paths and timecodes | No writes to media metadata; no species-image promotion; no inferred IDs without review |
| Analytics | Publication identity, production session log, stage names, production setup assumptions, OLI pilot pass/fail notes | No performance claim that graph/vector is faster until measured in real use |
| Markdown-only | Operating rules, workstation assumptions, internal production caveats, unresolved questions | Anything that would appear as public fact without a review gate |

## Validation Needed Before Any Retrieval Prototype

1. Can the system preserve source path, source ID, source owner, and review status on every retrieved item?
2. Can public retrieval exclude internal notes, raw evidence, and review-needed candidate media by default?
3. Can vector readback distinguish final published script from draft/story/proposed-write notes?
4. Can graph readback keep `observed`, `inferred`, `proposed`, and `approved` statuses separate?
5. Can media references remain timecoded candidates without creating or implying `media_assets` records?
6. Can the system report when `content_pipeline.transcript` is null and fall back to the archived project script only with an explicit label?
7. Can hardware/local compute assumptions be retrievable without treating them as environmental or ecological facts?
8. Can readback show why a public-facing use is blocked, not merely omit blocked evidence?
9. Can the prototype measure real lookup speed and error reduction against Markdown/Supabase lookup?
10. Can every retrieval answer cite both the source path and the owning domain?

## Open Questions For App

- Where should a no-write derived inventory live during dry-run: Markdown manifest, local JSON, temporary App memory, or a dedicated noncanonical sandbox?
- What schema distinguishes `candidate_media_reference` from canonical `media_assets`?
- How will graph/vector readback enforce publicness tiers before answering public-surface questions?
- Can App show blocked evidence and review reasons without leaking internal content into public outputs?
- How will readback measure real-use speed against current Markdown/Supabase lookup?

## Open Questions For Research

- Which Daphnia/microcrustacean labels are safe at genus, family, or broader group level?
- What wording is allowed for Ghost Shrimp zoea footage without implying recruitment or establishment?
- Should Mesostoma remain internal-only for the first public graph/vector prototype?
- Which context observations beyond `170-178` are explicitly approved for the bounded case?
- What is the safest chronology label for the Lake Post-Seal event range versus chronicle date?

## Open Questions For Company

- Who approves moving from docs-only design to no-write derived dry-run/readback?
- What is the minimum approval bundle before public surface reuse can be tested?
- Should cross-domain retrieval readiness be tracked in Planner, and if so by which domain?
- What threshold proves OLI is faster or safer enough to justify implementation work?

## Open Questions For Raw Footage

- What is the canonical read-only path/index strategy for raw footage references?
- Should candidate annotations use sidecar files, a no-write App cache, or Markdown manifests during dry-run?
- What checksum, thumbnail, and frame extraction policy is safe before backup gaps are closed?
- Which domain owns frame-level review decisions for ID-sensitive clips?

## Open Questions For Financials

- What storage and backup purchases are required before large-scale local visual AI processing?
- Should GPU time, electricity, storage wear, or cloud fallback costs be tracked for OLI prototypes?
- What budget gate applies before adding external transcription, indexing, or visual AI services?

## Closeout Notes

This inventory supports another docs-only design pass or a no-write, derived-only dry-run/readback prototype. It does not solve the weak points from Research task `394`: public surface reuse mapping and real-use speed remain unproven.

## Changed Files

- `research/research-briefs/2026-05-14-operation-living-intelligence-content-task-395-retrievable-source-inventory.md`

## Verification

- Source context read during creation: task `391`, task `392`, task `393`, task `394`, the Lake Post-Seal Living Atlas source packet, the archived Lake Post-Seal Content project, Content production setup memory, and DaVinci production tracker.
- Cleanup pass read-through performed on this artifact on `2026-05-14`.
- No media scans, imports, database writes, App changes, or canonical Content edits were performed.

## Not Changed

- Supabase records.
- App Planner tasks.
- Graph data/imports.
- Vector indexes.
- Visual AI annotations.
- Media metadata, `media_assets`, or `species_images`.
- App behavior, public site behavior, Content canonical records, Raw Footage files, species records, observation records, chronicle records, or Planner records.

## Unresolved Questions

- Where a no-write derived inventory should live during dry-run.
- How App should distinguish candidate media references from canonical media records.
- Which Daphnia, Ghost Shrimp, Mesostoma, and chronology claims are safe for public reuse.
- Whether Company should approve moving from docs-only design to no-write derived readback.
- What Raw Footage backup/checksum policy is required before visual AI processing.
- What Financials budget gate applies before adding storage, external transcription, indexing, or visual AI services.
