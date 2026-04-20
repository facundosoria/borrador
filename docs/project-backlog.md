# Project Backlog - Epics and Issues

## EPIC 1 - Foundation and Infra
- ISSUE 1.1 Create repository base structure and module docs.
- ISSUE 1.2 Configure `docker-compose` for `front + api + postgres`.
- ISSUE 1.3 Add `.env.example` and environment profiles.
- ISSUE 1.4 Add local run scripts and healthcheck validation.

## EPIC 2 - Auth and Users
- ISSUE 2.1 Create `users` schema and migration.
- ISSUE 2.2 Implement register and login with JWT access token.
- ISSUE 2.3 Implement refresh token flow and revoke strategy.
- ISSUE 2.4 Add `me` endpoint and route protection.
- ISSUE 2.5 Standardize auth error responses.

## EPIC 3 - Cards Catalog and Seed
- ISSUE 3.1 Create `cards_catalog` schema (fixed columns + `jsonb`).
- ISSUE 3.2 Implement idempotent import from `card.json`.
- ISSUE 3.3 Add indexes for search and filtering by `xy1`.
- ISSUE 3.4 Expose paginated cards API endpoints.

## EPIC 4 - Deck Builder
- ISSUE 4.1 Create `decks` and `deck_cards` schema.
- ISSUE 4.2 Implement deck CRUD by authenticated user.
- ISSUE 4.3 Implement mandatory deck validation rules.
- ISSUE 4.4 Return actionable validation errors.

## EPIC 5 - Lobby and Match Lifecycle
- ISSUE 5.1 Create match (`WAITING`) endpoint.
- ISSUE 5.2 Join match and transition to `SETUP`.
- ISSUE 5.3 Implement match state machine (`WAITING`, `SETUP`, `ACTIVE`, `FINISHED`).
- ISSUE 5.4 Persist lobby and match lifecycle events.

## EPIC 6 - Game Engine v1 (single engine)
- ISSUE 6.1 Implement `GameEngineFacade`.
- ISSUE 6.2 Implement setup flow (draw, mulligan, prizes, active/bench).
- ISSUE 6.3 Implement turn phases (`DRAW`, `MAIN`, `ATTACK`, `BETWEEN_TURNS`).
- ISSUE 6.4 Implement attack resolution pipeline (RF-01c).
- ISSUE 6.5 Implement knockout and prize flow.
- ISSUE 6.6 Implement special conditions and victory checks.
- ISSUE 6.7 Persist snapshots and immutable event log per action.

## EPIC 7 - Realtime and Reconnection
- ISSUE 7.1 Configure WebSocket channels per match.
- ISSUE 7.2 Publish gameplay events (turn, attack, KO, prizes, finish).
- ISSUE 7.3 Implement reconnection with latest state.
- ISSUE 7.4 Integrate Angular WebSocket client.

## EPIC 8 - Frontend Gameplay
- ISSUE 8.1 Implement auth views and session handling.
- ISSUE 8.2 Implement deck builder UI with validations.
- ISSUE 8.3 Implement lobby UI and join/create flow.
- ISSUE 8.4 Implement game board zones and action panel.
- ISSUE 8.5 Implement drag and drop interactions.
- ISSUE 8.6 Implement live action log and notifications.

## EPIC 9 - Testing and Quality
- ISSUE 9.1 Reach backend global coverage >= 80%.
- ISSUE 9.2 Reach >= 90% coverage on RuleValidator, DamageCalculator, StatusEffectManager.
- ISSUE 9.3 Add integration tests (full game, mulligan, evolve, KO, win).
- ISSUE 9.4 Add frontend E2E basic flow (login -> deck -> lobby -> turn).
- ISSUE 9.5 Publish JaCoCo report and verify thresholds.

## EPIC 10 - Documentation and Delivery
- ISSUE 10.1 Publish OpenAPI spec.
- ISSUE 10.2 Add ADRs for architecture/security/data choices.
- ISSUE 10.3 Write deployment manual (local + VPS).
- ISSUE 10.4 Document DB schema, migrations and seed process.
