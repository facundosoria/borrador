# Damage Calculation

## Resumen
Como calcular dano considerando modificadores y condiciones.

## Reglas exactas
- Iniciar con el dano base del ataque usando el valor `damage` del JSON de la carta.
- Si el ataque indica poner contadores de dano, no aplicar Debilidad ni Resistencia.
- Si el dano base es 0 o el ataque no hace dano, detener calculo.
- Aplicar efectos en el atacante que aumenten dano antes de Debilidad/Resistencia.
- Aplicar Debilidad del Pokemon Defensor segun el valor impreso en la carta (JSON `weaknesses`).
- Aplicar Resistencia del Pokemon Defensor segun el valor impreso en la carta (JSON `resistances`).
- Aplicar efectos en el Defensor que reduzcan dano despues de Debilidad/Resistencia.
- Por cada 10 de dano final, colocar 1 contador de dano.
- Si el dano final es 0 o menos, no colocar contadores.

## Depende de
- docs/rules/attack/modifiers.md
- docs/rules/status/special-conditions.md

## Referencias
- `docs/rules/source/XY1-S018-full-details-of-attacking.md`
