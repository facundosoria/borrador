# Rules Index (Action-Based)

## attack
Obligatorios:
- docs/rules/attack/pipeline.md
- docs/rules/attack/damage.md
- docs/rules/attack/modifiers.md
- docs/rules/attack/knockout.md
Dependencias:
- docs/rules/status/special-conditions.md
- docs/rules/turn/turn-flow.md
- docs/rules/global/core-concepts.md
Opcionales:
- docs/rules/attack/effects-order.md
- docs/rules/cards/ex-rules.md
- docs/rules/cards/mega-evolution.md
No leer:
- docs/rules/deck/*

## damage-calculation
Obligatorios:
- docs/rules/attack/damage.md
- docs/rules/attack/modifiers.md
Dependencias:
- docs/rules/status/special-conditions.md
- docs/rules/global/core-concepts.md
- docs/rules/attack/pipeline.md
Opcionales:
- docs/rules/cards/ex-rules.md

## special-conditions
Obligatorios:
- docs/rules/status/special-conditions.md
Dependencias:
- docs/rules/global/core-concepts.md

## turn-flow
Obligatorios:
- docs/rules/turn/turn-flow.md
- docs/rules/turn/phases.md
- docs/rules/turn/between-turns.md
Dependencias:
- docs/rules/global/core-concepts.md

## text-interpretation
Obligatorios:
- docs/rules/turn/up-to-vs-any-number.md

## setup-mulligan
Obligatorios:
- docs/rules/setup/mulligan.md
Dependencias:
- docs/rules/global/core-concepts.md
- docs/rules/setup/prizes.md

## setup-prizes
Obligatorios:
- docs/rules/setup/prizes.md
Dependencias:
- docs/rules/global/core-concepts.md
- docs/rules/win/win-conditions.md

## deck-build
Obligatorios:
- docs/rules/deck/construction.md
- docs/rules/deck/validation.md
Dependencias:
- docs/rules/cards/name-counting.md
- docs/rules/cards/ace-spec.md
Opcionales:
- docs/rules/cards/energy-types.md

## win-conditions
Obligatorios:
- docs/rules/win/win-conditions.md
Dependencias:
- docs/rules/global/core-concepts.md
- docs/rules/setup/prizes.md
- docs/rules/attack/knockout.md
Opcionales:
- docs/rules/win/sudden-death.md

## draw-more-than-deck
Obligatorios:
- docs/rules/advanced/draw-more-than-deck.md
Dependencias:
- docs/rules/turn/turn-flow.md

## restored-pokemon
Obligatorios:
- docs/rules/cards/restored-pokemon.md

## team-plasma
Obligatorios:
- docs/rules/cards/team-plasma.md

## realtime-events
Obligatorios:
- docs/rules/realtime/event-types.md
Dependencias:
- docs/rules/turn/turn-flow.md
- docs/rules/attack/pipeline.md
No leer:
- docs/rules/deck/*
