---
name: content-handoff-brief
description: Use to prepare source-aware research context for Content without writing the final script, caption, title, thumbnail text, or polished public asset.
---
# Content Handoff Brief Skill

## Trigger Phrases

- "Prepare a research brief for Content"
- "Handoff to Content"
- "Content-safe wording"
- "What can the script safely say?"
- "Phrases to avoid"
- "Research context for a video"

## Required Memory

- `memory/00-index.md`
- `memory/01-agent-role-and-boundaries.md`
- `memory/02-source-of-truth-and-write-policy.md`
- `memory/04-cross-domain-handoffs.md`
- `memory/05-supabase-and-structured-record-rules.md` when current records matter

## Required Docs/Templates During Migration

- `skills/content-handoff-brief/reference/content-handoff-rules.md`
- `skills/claim-check/reference/uncertainty-labels.md`
- `skills/content-handoff-brief/reference/research-brief-template.md`
- Existing files under `research/research-briefs/`, if present and relevant

## Workflow

1. Identify the downstream agent need and audience.
2. Use `skills/supabase-ecology-read/SKILL.md` when the brief depends on current miniBIOTA state.
3. Use `skills/claim-check/SKILL.md` before public-facing claims.
4. Use `skills/organism-identification/SKILL.md` before treating uncertain IDs as species facts.
5. Use `skills/experiment-background/SKILL.md` before introductions, husbandry changes, interventions, system changes, or action recommendations appear in the brief.
6. Summarize the plain-language research context.
7. List strongest verified points.
8. Preserve uncertainty notes and evidence gaps.
9. Separate observed miniBIOTA facts, general literature, inference, planned work, speculation, and public-safe wording.
10. Provide source-backed claims and source notes.
11. Suggest cautious content-safe wording.
12. List phrases to avoid.
13. Preserve open research questions.
14. Make clear that suggested wording is not final public copy, script language, platform metadata, or publishing approval.

## Expected Output

- Research brief for Content or another downstream agent.
- Plain-language summary, strongest verified points, uncertainty notes, source-backed claims, suggested content-safe wording, phrases to avoid, and open research questions.
- No final script unless explicitly requested.
- Conservative public-safe wording.
- Explicit separation of observed miniBIOTA facts, general literature, inference, planned work, speculation, and public-safe wording.
- Clear do-not-say guidance.
- Clear note when `Do not claim publicly yet` is the safest handoff outcome.

## Write/Approval Rules

- Tell the user what files will change before editing.
- Use `skills/content-handoff-brief/reference/research-brief-template.md` for durable briefs during migration.
- Do not update Brain or Content repos unless explicitly requested and approved.

## Do Not Do

- Do not write final public content by default.
- Do not hand Content a stronger claim than the evidence supports.
- Do not treat `Likely` or `Possible` as confirmed in Content, Brand, Website, Growth, or other downstream handoffs.
- Do not include `Do not claim publicly yet` material as public-safe wording.
- Do not erase uncertainty for narrative simplicity.
- Do not turn handoff wording into approved script, caption, website copy, title, thumbnail, platform metadata, or publishing language.
- Do not create or resolve public open loops as structured records without explicit approval.
