---
name: session-closeout
description: Use to close Research sessions with changed files, verification, non-changes, unresolved questions, and whether Brain or domain follow-up is needed.
---
# Session Closeout Skill

## Trigger Phrases

- "Close out"
- "Session closeout"
- "Wrap up"
- "Finish the research session"
- "What changed?"

## Required Memory

- `memory/00-index.md`
- `memory/02-source-of-truth-and-write-policy.md`
- `memory/04-cross-domain-handoffs.md`
- `memory/05-supabase-and-structured-record-rules.md`

## Required Docs/Templates During Migration

- `AGENTS.md`
- `_system/codex_session_close.ps1` as helper context only

## Workflow

1. Identify changed files.
2. Read every new or changed documentation file end to end.
3. Confirm source notes, open questions, evidence gaps, and current-state verification were preserved where the session created or migrated research workflow material.
4. Run `git diff --name-only`.
5. Run `git status --short --branch`.
6. Confirm whether Supabase records changed.
7. Confirm whether structured records changed.
8. Confirm whether app behavior or public site behavior changed.
9. Confirm whether Brain mirrored docs or Brain research brief changed.
10. Confirm whether species, biome, observation, chronicle, risk, food-web, or research-note records changed.
11. Confirm whether uncertain observations were rewritten as confirmed ecology.
12. Confirm whether organism introductions, husbandry actions, control interventions, or ecosystem recommendations were approved.
13. Confirm whether test data was created.
14. Confirm whether `Likely`, `Possible`, `Speculative`, `Unknown`, `Needs microscopy`, or `Needs expert confirmation` material was presented as stronger than its evidence.
15. Confirm whether `Do not claim publicly yet` material was kept out of public-safe wording.
16. Confirm whether any suggested handoff wording was kept separate from final public copy, scripts, captions, titles, thumbnails, platform metadata, and publishing language.
17. If structured ecological records changed in an approved task, verify affected species, observation, thread, loop, chronicle, biome, system, and media links.
18. State unresolved questions.
19. State whether Brain research brief or other domain follow-up is needed.
20. If local docs changed in a way that requires Brain mirror sync, report that follow-up instead of running sync scripts unless explicitly requested.

## Expected Output

Use this format:

```markdown
Changed files:
- path

Verification:
- command or read-through performed

Not changed:
- item

Unresolved questions:
- item or "None"
```

## Write/Approval Rules

- Do not perform closeout writes unless explicitly requested.
- Do not update Brain during restricted phases.
- Do not run sync scripts unless explicitly requested and in scope.
- Do not commit, push, or sync unless explicitly requested and in scope.

## Do Not Do

- Do not hide failed verification.
- Do not claim structured records were unchanged if a write occurred.
- Do not report uncertainty-labeled material as public-ready unless the relevant claim check supports it.
- Do not skip the non-change confirmations requested by the user.
