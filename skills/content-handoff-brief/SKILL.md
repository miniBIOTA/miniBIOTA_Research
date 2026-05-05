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

- `docs/content_handoff_rules.md`
- `docs/research_workflow.md`
- `docs/uncertainty_labels.md`
- `templates/research-brief-template.md`
- Existing files under `research/research-briefs/`, if present and relevant

## Workflow

1. Identify the downstream Content need and audience.
2. Verify current structured records if the brief depends on live ecology.
3. Summarize the plain-language research context.
4. List strongest verified points.
5. Preserve uncertainty notes and evidence gaps.
6. Provide source-backed claims and source notes.
7. Suggest cautious content-safe wording.
8. List phrases to avoid.
9. Preserve open research questions.

## Expected Output

- Research brief for Content or another downstream agent.
- No final script unless explicitly requested.
- Conservative public-safe wording.
- Clear do-not-say guidance.

## Write/Approval Rules

- Tell the user what files will change before editing.
- Use `templates/research-brief-template.md` for durable briefs during migration.
- Do not update Brain or Content repos unless explicitly requested and approved.

## Do Not Do

- Do not write final public content by default.
- Do not hand Content a stronger claim than the evidence supports.
- Do not erase uncertainty for narrative simplicity.
- Do not create or resolve public open loops as structured records without explicit approval.
