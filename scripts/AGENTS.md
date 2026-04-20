# AGENTS - Scripts

## Objetivo
Definir reglas para scripts locales y verificacion.

## Scope
- Scripts de arranque, apagado y verificacion local.

## Reglas
- Scripts idempotentes.
- No introducir secretos.
- Fallar con mensajes accionables.

## Flujo de trabajo
- Analisis -> especificacion -> planificacion -> implementacion -> verificacion.

## Restricciones absolutas
- No inventar APIs o librerias inexistentes.
- No incluir secretos; usar variables de entorno.
- No modificar DB o esquemas sin documentar impacto.

## Skills prioritarias
- secure-code-guardian
- git-flow-branch-creator
