# ADR-002 - JWT Authentication

## Status
Accepted

## Decision
Use JWT with short-lived access token and refresh token flow.

## Rationale
- Stateless auth for API scale and simplicity.
- Explicit user identity for game actions and ownership.
