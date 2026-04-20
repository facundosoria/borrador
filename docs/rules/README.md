# Rules Modules

## Objetivo
Documentar reglas de juego en modulos pequenos, con dependencias explicitas, para lectura selectiva y precisa.

## Como usar
1. Leer `docs/rules/index.md`.
2. Cargar solo los archivos listados en la accion solicitada.
3. Respetar la seccion "Depende de" de cada modulo.
4. Si falta una regla, consultar `docs/rules/source/` y resumirla en el modulo correcto.

## Reglas de precision
- Ninguna regla se aplica sin sus dependencias.
- No asumir reglas fuera del indice.
- Toda regla debe tener referencia a la seccion fuente XY1.

## Prioridad de reglas
- XY1 es la fuente principal.
- TPI aplica solo si no contradice XY1.
- Excepcion: Energias Especiales maximo 4 copias por mazo.
