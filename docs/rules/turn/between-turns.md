# Between Turns

## Resumen
Procesamiento entre turnos y orden de condiciones especiales.

## Reglas exactas
- Procesar condiciones especiales en orden fijo: Envenenado -> Quemado -> Dormido -> Paralizado.
- Despues aplicar efectos de Habilidades u otros efectos que ocurran entre turnos.
- No mezclar condiciones especiales con otros efectos; resolverlas por bloque.
- Luego verificar KOs por efectos entre turnos.

## Depende de
- docs/rules/status/special-conditions.md

## Referencias
- `docs/rules/source/XY1-S012-turn-actions.md`
