# Research Agent Migration Notes

## Phase 1

Phase 1 created the initial Codex-native architecture for `miniBIOTA_Research`:

- `memory/` for durable operating memory.
- `skills/` for task-specific playbooks.
- Selected `skills/*/reference/` folders for later absorption of detailed reference material.
- `archive/` as an empty destination for future approved archival work.

## What Was Not Migrated Yet

Existing `docs/`, `templates/`, and `research/` files were not moved, archived, deleted, or rewritten in Phase 1.

During migration, skills may still reference active docs and templates as source material.

## Future Phases

Future approved phases should:

- Absorb durable operating rules from `docs/` into `memory/`.
- Absorb workflow instructions into matching `skills/*/SKILL.md`.
- Move detailed references into `skills/*/reference/` when that is the cleaner home.
- Archive superseded docs or templates only after confirming the new architecture fully covers them.

## Non-Changes

Phase 1 did not change:

- Supabase records.
- Structured ecological records.
- Species facts.
- Biome facts.
- Observation records.
- Chronicle records.
- Risk records.
- Food-web assumptions.
- Research-note records.
- App behavior.
- Public site behavior.
- Brain mirrored docs.
- Brain research brief.
- Live ecosystem actions, introductions, husbandry, controls, or recommendations.
