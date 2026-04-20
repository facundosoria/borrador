# C4 Container (Draft)

- Container `front`: Angular SPA + Nginx runtime.
- Container `api`: Spring Boot modular monolith.
- Container `postgres`: primary relational database.

Main integrations:
- `front` -> `api` (HTTPS REST + WS)
- `api` -> `postgres` (JDBC)
