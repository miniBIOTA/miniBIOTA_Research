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
- `docs/agent_protocol.md`
- `_system/codex_session_close.ps1` as helper context only

## Workflow

1. Identify changed files.
2. Read every new or changed documentation file end to end.
3. Run `git diff --name-only`.
4. Run `git status --short --branch`.
5. Confirm whether Supabase records changed.
6. Confirm whether structured records changed.
7. Confirm whether app behavior or public site behavior changed.
8. Confirm whether Brain mirrored docs or Brain research brief changed.
9. Confirm whether species, biome, observation, chronicle, risk, food-web, or research-note records changed.
10. Confirm whether uncertain observations were rewritten as confirmed ecology.
11. Confirm whether organism introductions, husbandry actions, control interventions, or ecosystem recommendations were approved.
12. Confirm whether test data was created.
13. Confirm whether `Likely`, `Possible`, `Speculative`, `Unknown`, `Needs microscopy`, or `Needs expert confirmation` material was presented as stronger than its evidence.
14. Confirm whether `Do not claim publicly yet` material was kept out of public-safe wording.
15. State unresolved questions.
16. State whether Brain research brief or other domain follow-up is needed.

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

## Do Not Do

- Do not hide failed verification.
- Do not claim structured records were unchanged if a write occurred.
- Do not report uncertainty-labeled material as public-ready unless the relevant claim check supports it.
- Do not skip the non-change confirmations requested by the user.
