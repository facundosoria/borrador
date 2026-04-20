# AGENTS - DB

## Scope
- PostgreSQL, migraciones y seed.

## Reglas de datos
- PostgreSQL es la base principal del proyecto.
- Migraciones versionadas e idempotentes cuando aplique.
- Seed de cartas re-ejecutable sin duplicados.
- Modelo hibrido de cartas: columnas fijas + `jsonb`.
- Persistencia de snapshots y eventos de partida.

## Skills prioritarias
- postgres-pro
- spring-data-jpa
- spring-boot-test-patterns
- secure-code-guardian

## RF/RNF cubiertos
- RF-04, RF-05
- RNF-01, RNF-02, RNF-05
