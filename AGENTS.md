# AGENTS - Proyecto Puchamon

## Objetivo
Definir reglas y fuentes de verdad para el desarrollo del proyecto.

## Scope
- Monolito modular con `api/`, `front/`, `infra/`, `docs/`, `scripts/`.

## Fuentes de verdad obligatorias
- `docs/requirements/`.
- `docs/rules/`.

## Regla de lectura selectiva
- Leer `docs/rules/index.md` primero.
- Cargar solo los modulos listados por accion.
- Si falta una regla, consultar `docs/rules/source/` y resumirla en el modulo correcto.

## Prioridad de reglas
- Fuente principal: XY1 rulebook modularizado en `docs/rules/`.
- TPI aplica solo si no contradice XY1.
- Excepcion: Energias Especiales maximo 4 copias por mazo.

## Stack tecnologico
- Backend: Java 21 + Spring Boot 3.x.
- Front: Angular 21+.
- DB: PostgreSQL.

## Comandos base
- Levantar entorno: `./scripts/dev-up.sh`.
- Apagar entorno: `./scripts/dev-down.sh`.
- Tests backend: `./scripts/run-tests.sh`.

## Reglas de arquitectura
1. El backend es la fuente de verdad del juego.
2. El motor de reglas vive en `api/src/main/java/com/puchamon/game/engine`.
3. Las reglas criticas no se duplican en frontend.
4. Los modulos no deben acoplarse por implementaciones internas de otros modulos.
5. Todo acceso a DB pasa por capas de repositorio/infraestructura.

## Reglas de calidad
- Java 21, SOLID, nombres descriptivos.
- Cobertura global backend >= 80%.
- Cobertura >= 90% en RuleValidator, DamageCalculator y StatusEffectManager.
- Manejo de errores uniforme y mensajes accionables.

## Reglas de datos
- PostgreSQL es la base principal.
- Las cartas se almacenan con esquema hibrido (campos fijos + `jsonb`).
- El seed de cartas debe ser idempotente.

## Flujo de trabajo
- Analisis -> especificacion -> planificacion -> implementacion -> verificacion.

## Restricciones absolutas
- No inventar APIs o librerias inexistentes.
- No incluir secretos; usar variables de entorno.
- No modificar DB o esquemas sin documentar impacto.

## Skills prioritarias
- find-skills
- git-flow-branch-creator
- code-documenter
- secure-code-guardian

## Criterio de Done global
- Implementacion + prueba + trazabilidad RF/RNF.
- Documentacion actualizada en `docs/`.
- OpenAPI y eventos WebSocket sincronizados con el codigo.
