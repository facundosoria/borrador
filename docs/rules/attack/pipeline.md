# Attack Pipeline

## Resumen
Flujo completo de un ataque desde declaracion hasta resolucion.

## Reglas exactas
- Un ataque tiene costo y nombre, y puede tener dano base y texto de dano.
- El texto de ataques cuenta como ataque aunque no haga dano.
- Habilidades u otros textos que no son ataques no cuentan como ataque.
- Antes de atacar, verificar energia correcta y anunciar el ataque.
- Si el Pokemon Activo esta Confuso, resolver el chequeo antes del ataque.
- Hacer elecciones requeridas por el ataque antes de resolverlo.
- Ejecutar requisitos del ataque (ej. lanzar moneda) antes de resolver efectos.
- Aplicar efectos que alteren o cancelen el ataque antes de dano.
- Aplicar efectos antes del dano, luego dano, luego otros efectos.
- Al terminar el ataque, verificar KOs, premios y reemplazo de Activo.
- Luego ejecutar el paso entre turnos.

## Depende de
- docs/rules/attack/damage.md
- docs/rules/attack/modifiers.md
- docs/rules/attack/knockout.md
- docs/rules/status/special-conditions.md
- docs/rules/turn/turn-flow.md

## Referencias
- `docs/rules/source/XY1-S017-what-counts-as-an-attack.md`
- `docs/rules/source/XY1-S018-full-details-of-attacking.md`
