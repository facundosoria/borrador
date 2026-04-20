# AGENTS - Infra

## Objetivo
Definir reglas de infraestructura local y despliegue.

## Scope
- Infraestructura local y soporte de despliegue.
- Docker Compose, scripts y configuraciones.

## Reglas
- Mantener scripts y configuraciones reproducibles.
- Evitar acoplar despliegue con configuraciones hardcodeadas.
- Definir variables de entorno claras en `.env.example`.
- No commitear secretos.

## Flujo de trabajo
- Analisis -> especificacion -> planificacion -> implementacion -> verificacion.

## Restricciones absolutas
- No inventar APIs o librerias inexistentes.
- No incluir secretos; usar variables de entorno.
- No modificar DB o esquemas sin documentar impacto.

## Skills prioritarias
- secure-code-guardian
- code-documenter
- git-flow-branch-creator
