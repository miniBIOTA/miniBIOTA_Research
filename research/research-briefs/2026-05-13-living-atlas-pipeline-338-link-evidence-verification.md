---
id: living_atlas_pipeline_338_link_evidence_verification_2026_05_13
title: Living Atlas Pipeline 338 Link And Evidence Verification
type: research_brief
status: complete
last_updated: 2026-05-13
for_agent: Content
tags: [research-brief, handoff, operation-living-atlas, pipeline-338, chronicle-30, lake-post-seal, task-222, link-verification, media-verification]
---
# Research Brief: Living Atlas Pipeline 338 Link And Evidence Verification

## Audience

Intended downstream agent or use: Content task 214 packet-closeout review for Operation Living Atlas, pipeline 338 / chronicle 30 / Freshwater Lake Post-Seal.

This note verifies link and evidence integrity only. It does not approve live ecological writes, media records, public captions, public rendering, Web/App work, species-card edits, chronicle edits, subject-link edits, open-loop edits, or Planner task closure.

## Plain-Language Summary

The packet's core link map is structurally sound: pipeline 338 points to chronicle 30, chronicle 30 points back to pipeline 338, the listed chronicle subject links exist, the primary observations exist, the packet's core observation-thread and observation-loop link claims match live records, and the five pipeline 338 open loops remain in the expected open/advanced state.

Content task 214 can close the packet after this verification if closeout means "packet verified with caveats and ready for later approval bundles." It should not close as "ready to apply live writes" or "ready for public rendering." The packet should carry the mismatches below into its closeout notes or proposed-write checklist.

## Research Question

Do the packet's observation links, story-thread links, open-loop links, chronicle links, subject links, and media recommendations match structured records and source evidence closely enough for Content task 214 to close the first Living Atlas model packet?

## Read-Only Verification Performed

- Read the Content-owned packet: `M:\miniBIOTA\miniBIOTA_Content\audits\living_atlas\source_packets\pipeline_338_chronicle_30_lake_post_seal_2026-05-12.md`.
- Read the Research validation note: `M:\miniBIOTA\miniBIOTA_Research\research\research-briefs\2026-05-13-living-atlas-pipeline-338-research-validation.md`.
- Live Supabase read-only checks through the Company helper:
  - `content_pipeline.id = 338`.
  - `chronicles.id = 30`.
  - `chronicle_subject_links` for chronicle `30`.
  - Cited observations `170-178` plus later context observations `179`, `180`, `185`, `188`, `193`, `194`, `196`, `197`, `201`, `206`, `207`, `225`, `226`, `240`, `242`, `245`, `246`, `247`, `250`.
  - `observation_thread_links` and `observation_loop_links` for those observations.
  - Story threads `1`, `2`, `3`, `5`, `12`, `20`, `21`, `30`.
  - Open loops `1`, `2`, `3`, `4`, `7`.
  - Existing media link/image tables checked: `media_chronicles`, `media_biomes`, `biome_images`, `species_images`, `media_species`, `media_tags`, and `media_assets`.
- Filesystem checks:
  - Confirmed all final media recommendation file paths exist.
  - Checked video durations using Windows shell metadata because `ffprobe` is not installed.
- No live records were changed.

## Link Verification Findings

### Pipeline And Chronicle

| Item | Result | Notes |
|---|---|---|
| `content_pipeline.id = 338` | Verified | Published longform, `published_date = 2026-04-17`, `published_url = https://youtu.be/lgmPWX9e-A0`, `biome_id = 1`, `chronicle_entry_id = 30`, `transcript = null`. |
| `chronicles.id = 30` | Verified | Primary Freshwater Lake biome chronicle, `source_pipeline_id = 338`, `event_date = 2026-04-17`, `youtube_url = https://youtu.be/lgmPWX9e-A0`. |
| Chronicle date semantics | Still unresolved | Live record confirms publish-date semantics. The March 12-April 8 ecological event window remains a proposed chronology question, not a mismatch to repair during task 214. |

### Chronicle Subject Links

Live chronicle 30 subject links match the packet:

| Link | Live subject | Relationship | Verification |
|---:|---|---|---|
| `17` | Freshwater Lake biome `1` | `primary` | Matches packet. |
| `22` | Flagfish `24` | `major_impact` | Matches packet. |
| `23` | Daphnia `164` | `major_impact` | Matches packet, but public wording remains Daphnia-sensitive. |
| `24` | Ghost Shrimp `67` | `major_impact` | Matches packet. |
| `25` | Freshwater amphipods `66` | `context` | Matches packet. |
| `26` | Calanoid copepods `65` | `context` | Matches packet. |
| `27` | Cyclopoid copepods `169` | `context` | Matches packet. |
| `28` | Slough Crayfish `25` | `context` | Matches packet. |

Mesostoma `167` is not linked to chronicle 30. That matches the packet's current review posture: Mesostoma remains internal/open-loop by default, with only a cautious context-link option for later approval.

### Observation Records

All primary packet observations `170-178` exist and match the packet's evidence summary:

- `170`: opaque green water / light-energy / food-web bridge rationale.
- `171`: Ludwigia versus tapegrass/sagittaria plant-structure shift.
- `172`: Daphnia magna diagnostic-trial rationale.
- `173`: failed field search for Moina/Daphnia.
- `174`: duckweed alternative bridge / small test context.
- `175`: trail-pool discovery of possible Daphnia and large ostracods.
- `176`: April 8 species composition, including Daphnia, ostracods, and Mesostoma.
- `177`: April 8 introduction of collected organisms and duckweed test.
- `178`: Mesostoma correction and predator-pressure tension.

Important caveat: observations `170-178` do not have direct `pipeline_id = 338` or `chronicle_id = 30` fields in the live `observations` rows. Their packet relevance is supported by source evidence, observation-thread links, observation-loop links, the archived project document, and the chronicle/pipeline relationship. If Content/App expects formal direct observation-to-pipeline or observation-to-chronicle links later, that is a proposed-write/data-model item, not something already present.

### Story-Thread Links

The packet's core thread-link table for observations `170-178` matches live records:

| Thread | Packet-linked observations | Live verification |
|---:|---|---|
| `1` Daphnia - establishing in the post-seal lake biome | `172`, `173`, `175`, `176`, `177` | Verified. |
| `3` Larger ostracods - no sightings since introduction | `176`, `177` | Verified. |
| `5` Freshwater Lake - ecological state post-seal | `170`, `171`, `174`, `177`, `178` | Verified. |

Later follow-up links are mostly sound:

- Ghost Shrimp zoea observations `207` and `240` link to ghost shrimp / zoea threads.
- Lake-state observations `225`, `242`, `245`, `246`, `247` link into Freshwater Lake thread `5` and/or relevant follow-up threads.
- Ostracod follow-ups `196`, `197`, `201`, `226`, and `250` link to thread `3` and/or thread `5`.

Potential missing thread-link cleanup:

- Observation `193` and observation `194` are cited in the packet's ostracod follow-up set, and both have loop `2` links, but neither returned a live `observation_thread_links` row in this check. If Content task 214 wants the ostracod follow-up set to be fully thread-linked, these should be listed as potential missing thread links to thread `3`; do not apply without approval.

### Open-Loop Links

The packet's core open-loop link table for observations `170-178` matches live records:

| Loop | Packet-linked observations | Live verification |
|---:|---|---|
| `1` Daphnia establishment | `170`, `172`, `173`, `175`, `176`, `177` | Verified. |
| `2` Mesostoma pressure | `176`, `178` | Verified. |
| `4` lake food-web completion | `170`, `171`, `175`, `177` | Verified. |
| `7` crayfish checking Mesostoma | `178` | Verified. |

Later loop evidence is present but should remain carefully worded:

- `179`, `180`, `185`, `188`, `197`, and `225` advance loop `1`, but they do not resolve Daphnia establishment.
- `193`, `194`, `196`, `197`, `201`, and `226` advance loop `2`, but they do not prove Mesostoma caused ostracod decline.
- `207` and `240` advance loop `3`, but they do not prove juvenile recruitment.
- `185`, `188`, `196`, `197`, `225`, `242`, `245`, `246`, `247`, and `250` advance loop `4`, but they do not prove food-web completion.
- `201` and `178` link to loop `7`, but they do not prove crayfish control Mesostoma.

Potential missing loop-link cleanup:

- Observation `206` is cited as part of the post-flagfish amphipod visibility context and has thread links, but no loop link returned in this check. This is not a blocker because later amphipod observation `246` is loop-linked to loop `4`. If observation `206` is intended to be direct open-loop evidence, it should be listed as a possible missing loop `4` link for a later approved cleanup.

### Open-Loop Records

The five pipeline 338 open loops match the packet:

| Loop | Live status | Verification |
|---:|---|---|
| `1` Daphnia establishment | `open` | Matches packet. |
| `2` Mesostoma pressure | `open` | Matches packet. |
| `3` Ghost Shrimp establishment | `advanced` | Matches packet. |
| `4` lake food-web completion | `advanced` | Matches packet. |
| `7` crayfish checking Mesostoma | `open` | Matches packet. |

No loop should be resolved from this packet.

## Media Verification Findings

### Structured Media Records

- `media_assets` contains indexed records for the recommended video files:
  - `20260405_114948.mp4`, `20260405_121055.mp4`, `20260408_112539.mp4`, `20260408_112606.mp4`, `20260408_112739.mp4`, `20260408_114418.mp4`, `20260408_121519.mp4`, `20260408_135213.mp4`, `20260408_140153.mp4`, `20260408_141102.mp4`, `20260408_161920.mp4`, `20260419_212350.mp4`, `20260501_071248.mp4`.
- `media_assets` did not return records for:
  - `Other Photos & Videos\Biomes\Freshwater Lake\20260408_082108.jpg`.
  - `Other Photos & Videos\Biomes\Freshwater Lake\20260503_101720.jpg`.
- Both still-image files do exist on disk, so the packet's file paths are valid, but they are not verified as indexed `media_assets` rows in this check.
- `media_chronicles` returned no existing links for chronicle `30`.
- `media_biomes` returned no existing links for Freshwater Lake biome `1`.
- `biome_images` returned only the existing old primary biome image: `biomes/Lake Biome 9 Jun 2025.jpg`.
- `species_images` returned existing primary images for Flagfish `24` and Ghost Shrimp `67`; no Daphnia `164` or Mesostoma `167` species image records returned.
- `media_species` returned no links for species `24`, `67`, `164`, or `167`.
- `media_tags` returned no rows.

This supports the packet's statement that task 213 produced a media recommendation only. It did not create media records or public captions.

### Filesystem And Timestamp Checks

All recommended media file paths exist on disk.

Video durations checked from Windows shell metadata:

| File | Duration | Packet timestamp recommendation | Result |
|---|---:|---|---|
| `20260405_114948.mp4` | `00:09:27` | `00:45-02:30`; also `00:00`, `01:15`, `02:45` | Valid. |
| `20260405_121055.mp4` | `00:00:38` | `00:03-00:19` | Valid. |
| `20260408_112539.mp4` | `00:00:13` | `00:00-00:13` | Valid, but uses full clip length. |
| `20260408_112606.mp4` | `00:00:11` | `00:02-00:11` | Valid, but ends at clip boundary. |
| `20260408_112739.mp4` | `00:00:27` | `00:00-00:27` | Valid, but uses full clip length. |
| `20260408_114418.mp4` | `00:00:15` | `00:00-00:30` | Mismatch: recommendation exceeds file duration. Correct to `00:00-00:15` or re-check the intended file. |
| `20260408_121519.mp4` | `00:01:19` | `00:06-01:13` | Valid. |
| `20260408_135213.mp4` | `00:02:18` | `00:00-01:35` | Valid. |
| `20260408_140153.mp4` | `00:01:48` | `00:45-00:55` | Valid. |
| `20260408_141102.mp4` | `00:00:24` | `00:00-00:24` | Valid, but uses full clip length. |
| `20260408_161920.mp4` | `00:00:43` | `00:14-00:40` | Valid. |
| `20260419_212350.mp4` | `00:01:15` | `00:06-01:09` | Valid. |
| `20260501_071248.mp4` | `00:01:31` | `00:00-01:31` | Valid, but uses full clip length. |

### Final Media-Selection Recommendation Integrity

Recommended public candidate bundle:

- April 8 opacity still `20260408_082108.jpg`: path exists; not returned from `media_assets`; safe only as opacity context.
- Flagfish transfer/retirement clip `20260405_121055.mp4`: indexed, path exists, timestamp valid; public candidate is link-safe with "moved/retired outdoors" wording, not "released" without context.
- April 5 wide lake frames from `20260405_114948.mp4`: indexed, path exists, timestamps valid; safe as pre-April-8 opacity context.
- April 8 field-search clips `20260408_112539.mp4` and `20260408_112606.mp4`: indexed, paths exist, timestamps valid; safe as field-search/sampling context without organism ID claims.
- Optional April 8 green-water field clip `20260408_114418.mp4`: indexed and path exists, but timestamp range must be corrected from `00:00-00:30` to within the `00:00:15` duration before packet closeout.
- April 8 organism-introduction clip `20260408_140153.mp4`: indexed, path exists, timestamp valid; safe as introduction context only.

Hold for Research review before public use:

- Daphnia/microcrustacean clips `20260408_121519.mp4` and `20260408_141102.mp4`: indexed, paths exist, timestamps valid; public use remains gated because the ID is sensitive. Use "microcrustaceans" or "field sample organisms" unless a frame-level Research ID review approves public `Daphnia sp.` wording. Do not use `Daphnia ambigua`.
- Ghost Shrimp zoea candidate `20260419_212350.mp4`: indexed, path exists, timestamp valid; public use remains gated. It may support breeding/zoea only after visual confirmation; it must not imply juvenile recruitment, survival, second generation, or establishment.

Internal by default:

- Mesostoma clip `20260408_161920.mp4`: indexed, path exists, timestamp valid; keep internal/open-loop unless Research + Company approve public Mesostoma context handling.
- Mixed-organism close-up `20260408_135213.mp4`: indexed, path exists, timestamp valid; too ID-sensitive for public captioning from this packet alone.
- Sample-density/search clip `20260408_112739.mp4`: indexed, path exists, timestamp valid; internal/context only unless captioned without ID claims.
- Later water-state still `20260503_101720.jpg`: path exists; not returned from `media_assets`; keep internal/context unless a separate chronology/media approval decides otherwise.
- Ghost Shrimp follow-up `20260501_071248.mp4`: indexed, path exists, timestamp valid; not selected as proof-quality for zoea/recruitment.

## Mismatches Or Missing Links

1. Observations `170-178` exist but are not directly linked through `observations.pipeline_id = 338` or `observations.chronicle_id = 30`.
   - Severity: medium if downstream systems expect direct observation-source links; low if packet source mapping remains Markdown plus thread/loop links.
   - Recommendation: carry as a proposed source-map/link cleanup item, not a task 214 blocker.

2. Observation `193` and observation `194` are cited in the ostracod follow-up set but did not return story-thread links.
   - Severity: low/medium.
   - Recommendation: if Content wants the ostracod follow-up evidence fully thread-linked, propose thread `3` links later. No live write now.

3. Observation `206` is cited as post-flagfish amphipod context and has story-thread links but did not return an open-loop link.
   - Severity: low.
   - Recommendation: not a blocker because observation `246` covers similar amphipod context and is linked to loop `4`. Add only if a later cleanup wants direct loop evidence from `206`.

4. The packet's final media recommendation for `20260408_114418.mp4` lists `00:00-00:30`, but the file duration is `00:00:15`.
   - Severity: medium for media closeout.
   - Recommendation: correct the recommendation to `00:00-00:15` or re-check whether a different intended file was meant.

5. The two still-image recommendations exist on disk but were not returned from `media_assets`.
   - Severity: medium for future media-record writes; low for packet evidence.
   - Recommendation: note that these are filesystem candidates, not verified indexed media assets. Future media writes may need indexing or a different media path.

6. No existing `media_chronicles`, `media_biomes`, or `media_species` links were found for this packet's recommended assets.
   - Severity: expected.
   - Recommendation: keep media link/caption writes as a separate later approval bundle.

7. Several live link notes and legacy record texts use stronger `Daphnia ambigua` language than Research now recommends for public handling.
   - Severity: public-claim risk, not a link-integrity failure.
   - Recommendation: task 214 should preserve the task 221 boundary: public wording should use `Daphnia sp.` unless task 217 or a frame-level ID review approves stronger language.

## Gated Evidence

- Daphnia-sensitive clips remain gated. The packet should not close with any Daphnia clip treated as public species-proof.
- Ghost Shrimp zoea footage remains gated. It can support "zoea/breeding evidence" only after visual confirmation and must not support recruitment or establishment.
- Mesostoma public use remains gated. It is link-safe as internal/open-loop evidence but not public-primary chronicle media.
- Later water-clearing stills and clips can support visual comparison only, not Daphnia establishment, Daphnia clearing, food-web completion, or Ghost Shrimp recruitment.

## Can Content Task 214 Close The Packet?

Yes, with caveats.

Content task 214 can close the packet if the closeout records:

- Core structured link map verified.
- No live ecological/public/media records applied.
- Direct observation-to-pipeline/chronicle links are not currently present and should remain a proposed cleanup/source-map item if needed.
- Potential missing follow-up links: observations `193`, `194`, and `206`.
- Media recommendation has one timestamp correction: `20260408_114418.mp4` should not cite `00:00-00:30` unless a different source file is intended.
- Still-image candidates exist on disk but were not confirmed as indexed `media_assets`.
- Media records/captions remain a separate approval bundle.
- Daphnia ID-sensitive clips, Ghost Shrimp zoea clips, and Mesostoma public use remain gated.

Content task 214 should not close the packet as public-ready, Web/App-ready, or approved for structured writes.

## Sources

- Content source packet: `M:\miniBIOTA\miniBIOTA_Content\audits\living_atlas\source_packets\pipeline_338_chronicle_30_lake_post_seal_2026-05-12.md`
- Research validation note: `M:\miniBIOTA\miniBIOTA_Research\research\research-briefs\2026-05-13-living-atlas-pipeline-338-research-validation.md`
- Live Supabase read-only records checked on May 13, 2026: `content_pipeline`, `chronicles`, `chronicle_subject_links`, `observations`, `observation_thread_links`, `observation_loop_links`, `story_threads`, `open_loops`, `media_assets`, `media_chronicles`, `media_biomes`, `biome_images`, `species_images`, `media_species`, `media_tags`.
- Filesystem checks on May 13, 2026 for final media recommendation paths under `M:\miniBIOTA\miniBIOTA_Files\8. Raw Footage\`.
