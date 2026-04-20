# DB Module (PostgreSQL)

Contiene scripts y activos de base de datos:

- `init/`: scripts de inicializacion de contenedor.
- `migrations/`: SQL versionado (si se usa fuera de Flyway app).
- `seed/`: datos semilla (cartas, decks ejemplo).

Nota: las migraciones principales de aplicacion viven en `api/src/main/resources/db/migration`.
