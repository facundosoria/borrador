# AGENTS - Front

## Objetivo
Definir reglas del frontend y lineamientos de UI.

## Scope
- Angular 21+ con TypeScript estricto.
- UI de login, deck builder, lobby y tablero.

## Fuentes de verdad obligatorias
- `Skills/README.md`.
- `docs/requirements/source/`.
- `docs/rules/source/`.

## Regla de lectura selectiva
- Leer `docs/rules/index.md` primero.
- Cargar solo los modulos listados por accion.

## Stack tecnologico
- Angular 21+.
- TypeScript estricto.

## Reglas funcionales
- No implementar reglas de negocio criticas en frontend.
- Front solo representa estado enviado por backend.
- Consumir REST y WebSocket.
- Mensajes de error claros y accionables.
- Diseñar para desktop y tablet.

## Calidad
- Flujos E2E: login -> deck -> lobby -> turno.
- Accesibilidad y usabilidad verificables.

## Flujo de trabajo
- Analisis -> especificacion -> planificacion -> implementacion -> verificacion.

## Restricciones absolutas
- No inventar APIs o librerias inexistentes.
- No incluir secretos; usar variables de entorno.
- No modificar DB o esquemas sin documentar impacto.

## Skills prioritarias
- angular-developer
- web-design-guidelines
- playwright-expert
- secure-code-guardian

## RF/RNF cubiertos
- RF-07, RF-06
- RNF-02, RNF-05, RNF-06
