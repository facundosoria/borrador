# AGENTS - Docs

## Objetivo
Definir reglas de documentacion tecnica y entregables.

## Scope
- Documentacion tecnica y entregables.

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

## Reglas
- Mantener ADRs y arquitectura actualizadas.
- OpenAPI y eventos WebSocket deben reflejar el codigo real.
- Documentar DB, seeds y migraciones.
- Checklist final contra RF/RNF.

## Flujo de trabajo
- Analisis -> especificacion -> planificacion -> implementacion -> verificacion.

## Restricciones absolutas
- No inventar APIs o librerias inexistentes.
- No incluir secretos; usar variables de entorno.
- No modificar DB o esquemas sin documentar impacto.

## Skills prioritarias
- code-documenter
- spring-boot-openapi-documentation
- find-skills
