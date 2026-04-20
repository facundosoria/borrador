# AGENTS - API

## Objetivo
Definir reglas del backend y el motor de juego.

## Scope
- Backend Java 21 + Spring Boot 3.x.
- Dominios: auth, users, cards, deck, lobby, game (engine/realtime/persistence).

## Fuentes de verdad obligatorias
- `Skills/README.md`.
- `docs/requirements/source/`.
- `docs/rules/source/`.
- `docs/rules/`.

## Regla de lectura selectiva
- Leer `docs/rules/index.md` primero.
- Cargar solo los modulos listados por accion.
- Si falta una regla, consultar `docs/rules/source/` y resumirla en el modulo correcto.

## Stack tecnologico
- Java 21 + Spring Boot 3.x.
- PostgreSQL.

## Reglas de arquitectura
- Game Engine aislado en `game/engine`.
- REST y WebSocket son adaptadores, no contienen reglas criticas.
- Sin llamadas a API externa durante la partida.
- Persistir snapshot completo y log inmutable por accion relevante.

## Seguridad
- JWT access + refresh.
- Recursos (mazos/partidas) vinculados al usuario.
- Nunca exponer informacion oculta del rival.

## Calidad y pruebas
- Cobertura global >= 80%.
- Cobertura >= 90% en RuleValidator, DamageCalculator y StatusEffectManager.
- Tests de integracion: mulligan, evolucion, KO y victoria.

## Flujo de trabajo
- Analisis -> especificacion -> planificacion -> implementacion -> verificacion.

## Restricciones absolutas
- No inventar APIs o librerias inexistentes.
- No incluir secretos; usar variables de entorno.
- No modificar DB o esquemas sin documentar impacto.

## Skills prioritarias
- spring-boot-engineer
- java-architect
- spring-data-jpa
- spring-boot-security-jwt
- websocket-engineer
- spring-boot-openapi-documentation
- spring-boot-test-patterns
- java-junit
- secure-code-guardian

## RF/RNF cubiertos
- RF-01, RF-02, RF-03, RF-05, RF-06
- RNF-02, RNF-03, RNF-04, RNF-05
