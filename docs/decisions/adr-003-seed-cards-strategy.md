# ADR-003 - Card Seed Strategy

## Status
Accepted

## Decision
Persist cards in PostgreSQL with fixed columns plus `jsonb` payload, seeded from `card.json` via idempotent import.

## Rationale
- Keeps relational compliance for deliverables.
- Supports variable card structure without schema churn.
