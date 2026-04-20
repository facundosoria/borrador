# Puchamon - Pokemon TCG (TPI Programacion III)

Proyecto fullstack para implementar una version jugable del Pokemon TCG, cumpliendo los requerimientos funcionales y no funcionales del TPI.

## Stack tecnologico

- Backend: Java 21 + Spring Boot 3.x
- Frontend: Angular 21+
- Base de datos: PostgreSQL
- ORM: Spring Data JPA + Hibernate
- Tiempo real: WebSockets
- Seguridad: JWT
- Calidad: JUnit 5, Mockito, JaCoCo, Swagger/OpenAPI
- Flujo de trabajo: Git / GitFlow

## Objetivo

Construir una aplicacion que permita:

- autenticar usuarios
- buscar y guardar cartas del set `xy1`
- crear y validar mazos
- crear y unirse a partidas
- jugar partidas con reglas oficiales
- persistir el estado completo de la partida
- sincronizar el juego en tiempo real
- documentar y probar todo el sistema

## Arquitectura

- `api/`: backend Spring Boot modular
- `front/`: frontend Angular
- `infra/`: base de datos, migraciones, seed y scripts
- `docs/`: arquitectura, decisiones, API y testing

---

## Fase 0 - Base del proyecto

### Pasos
- Crear el monorepo con `api/`, `front/`, `infra/` y `docs/`
- Definir GitFlow
- Levantar Docker Compose con PostgreSQL, API y Front
- Agregar `.env.example`
- Crear scripts de arranque, apagado y verificacion local

### Requerimientos cubiertos
- `RF-03` - Gestion de partida
- `RNF-02` - Calidad y buenas practicas
- `RNF-05` - Seguridad
- `RNF-06` - Usabilidad y experiencia
- Tecnologias obligatorias: PostgreSQL, Git/GitFlow

---

## Fase 1 - Backend fundacional

### Pasos
- Crear Spring Boot 3.x con Java 21
- Organizar la app por dominios
- Configurar Spring Data JPA + Hibernate
- Agregar validaciones, logging y manejo global de errores
- Publicar Swagger/OpenAPI

### Requerimientos cubiertos
- `RF-03` - Gestion de partida
- `RF-05` - Persistencia del estado
- `RNF-02` - Calidad y buenas practicas
- `RNF-05` - Seguridad
- Tecnologias obligatorias: Java 21, Spring Boot 3.x, Swagger/OpenAPI

---

## Fase 2 - Modelo de datos y persistencia

### Pasos
- Diseñar el esquema PostgreSQL
- Crear tablas para usuarios, cartas, mazos, partidas, eventos y snapshots
- Usar modelo hibrido para cartas: columnas fijas + `jsonb`
- Crear migraciones versionadas
- Hacer seed idempotente del set `xy1`

### Requerimientos cubiertos
- `RF-03` - Gestion de partida
- `RF-04` - Construccion de mazos
- `RF-05` - Persistencia del estado
- `RNF-02` - Calidad y buenas practicas
- Tecnologias obligatorias: PostgreSQL

---

## Fase 3 - Seguridad

### Pasos
- Implementar registro, login y refresh token con JWT
- Proteger endpoints por usuario autenticado
- Vincular mazos y partidas al usuario
- Evitar exponer informacion oculta del rival

### Requerimientos cubiertos
- `RF-03` - Gestion de partida
- `RF-05` - Persistencia del estado
- `RNF-05` - Seguridad
- Tecnologias obligatorias: JWT

---

## Fase 4 - Catalogo de cartas

### Pasos
- Integrar `pokemontcg.io v2`
- Sincronizar cartas al caché local en base de datos
- Permitir busqueda y filtrado por `xy1`
- Evitar llamadas directas a la API externa durante la partida

### Requerimientos cubiertos
- `RF-04` - Construccion de mazos
- `RF-03` - Gestion de partida
- `RNF-01` - Rendimiento del sistema
- `RNF-05` - Seguridad
- Tecnologias obligatorias: `pokemontcg.io v2` con caché local

---

## Fase 5 - Deck Builder

### Pasos
- Crear CRUD de mazos por jugador
- Validar 60 cartas exactas
- Validar maximo 4 copias por nombre
- Validar 1 AS TACTICO maximo
- Validar minimo 1 Pokemon Basico
- Mostrar errores claros y accionables

### Requerimientos cubiertos
- `RF-02` - Tipos de cartas
- `RF-04` - Construccion de mazos
- `RNF-02` - Calidad y buenas practicas
- `RNF-05` - Seguridad
- `RNF-06` - Usabilidad y experiencia

---

## Fase 6 - Gestion de partida

### Pasos
- Crear lobby y matchmaking
- Implementar estados `WAITING`, `SETUP`, `ACTIVE`, `FINISHED`
- Implementar transiciones de turno
- Persistir snapshot completo despues de cada accion relevante
- Guardar log inmutable de acciones

### Requerimientos cubiertos
- `RF-03` - Gestion de partida
- `RF-05` - Persistencia del estado
- `RF-06` - Tiempo real
- `RNF-04` - Patrones de diseño
- `RNF-05` - Seguridad

---

## Fase 7 - Motor de juego

### Pasos
- Implementar `GameEngine` aislado
- Crear `RuleValidator`, `DamageCalculator`, `StatusEffectManager`, `VictoryConditionChecker` y `TurnManager`
- Cubrir setup, mulligan, premios, turnos, ataques, knockouts y victoria
- Resolver condiciones especiales y su orden correcto
- Ejecutar el pipeline de ataque definido por el TPI

### Requerimientos cubiertos
- `RF-01` - Reglas del juego
- `RF-02` - Tipos de cartas
- `RF-03` - Gestion de partida
- `RF-05` - Persistencia del estado
- `RNF-02` - Calidad y buenas practicas
- `RNF-04` - Patrones de diseño
- `RNF-05` - Seguridad

---

## Fase 8 - Tiempo real

### Pasos
- Implementar WebSockets bidireccionales
- Sincronizar el estado tras cada accion valida
- Emitir eventos de turno, ataque, KO, premio, condicion especial y fin de partida
- Soportar reconexion y reenvio del estado actual

### Requerimientos cubiertos
- `RF-06` - Tiempo real
- `RF-03` - Gestion de partida
- `RF-05` - Persistencia del estado
- `RNF-04` - Patrones de diseño
- Tecnologias obligatorias: WebSockets

---

## Fase 9 - Frontend Angular

### Pasos
- Crear Angular 21+ con TypeScript estricto
- Implementar login y sesion JWT
- Crear vistas de deck builder, lobby y tablero
- Consumir REST y WebSockets
- Mantener el frontend sin reglas criticas de juego

### Requerimientos cubiertos
- `RF-07` - Interfaz de usuario
- `RF-06` - Tiempo real
- `RNF-02` - Calidad y buenas practicas
- `RNF-05` - Seguridad
- Tecnologias obligatorias: Angular 21+

---

## Fase 10 - Interfaz de juego

### Pasos
- Mostrar zonas completas del tablero
- Mostrar HP, daño, energias, herramientas, premios y mano propia
- Mostrar la cantidad de cartas del oponente sin revelar contenido
- Habilitar drag and drop
- Mostrar log y notificaciones en tiempo real

### Requerimientos cubiertos
- `RF-07` - Interfaz de usuario
- `RF-06` - Tiempo real
- `RNF-05` - Seguridad
- `RNF-06` - Usabilidad y experiencia

---

## Fase 11 - Calidad y pruebas

### Pasos
- Unit tests con JUnit 5 y Mockito
- Cobertura global >= 80%
- Cobertura >= 90% en componentes criticos
- Tests de integracion para mulligan, evolucion, KO y victoria
- E2E basico: login -> deck -> lobby -> turno
- Publicar JaCoCo

### Requerimientos cubiertos
- `RF-01` - Reglas del juego
- `RF-02` - Tipos de cartas
- `RF-03` - Gestion de partida
- `RF-04` - Construccion de mazos
- `RF-05` - Persistencia del estado
- `RF-06` - Tiempo real
- `RF-07` - Interfaz de usuario
- `RNF-03` - Pruebas y cobertura
- `RNF-02` - Calidad y buenas practicas
- Tecnologias obligatorias: JUnit 5, Mockito, JaCoCo

---

## Fase 12 - Documentacion y entrega

### Pasos
- Mantener ADRs
- Documentar arquitectura, API, WebSockets y base de datos
- Documentar instalacion y despliegue
- Cerrar con checklist final contra RF y RNF

### Requerimientos cubiertos
- `RF-03` - Gestion de partida
- `RF-05` - Persistencia del estado
- `RF-06` - Tiempo real
- `RF-07` - Interfaz de usuario
- `RNF-02` - Calidad y buenas practicas
- `RNF-03` - Pruebas y cobertura
- `RNF-04` - Patrones de diseño
- `RNF-05` - Seguridad
- `RNF-06` - Usabilidad y experiencia

---

## Cobertura completa de requerimientos

### RF
- `RF-01` - Reglas del juego
- `RF-02` - Tipos de cartas
- `RF-03` - Gestion de partida
- `RF-04` - Construccion de mazos
- `RF-05` - Persistencia del estado
- `RF-06` - Tiempo real
- `RF-07` - Interfaz de usuario

### RNF
- `RNF-01` - Rendimiento del sistema
- `RNF-02` - Calidad y buenas practicas
- `RNF-03` - Pruebas y cobertura
- `RNF-04` - Patrones de diseño
- `RNF-05` - Seguridad
- `RNF-06` - Usabilidad y experiencia

## Criterio de cumplimiento

Ningun punto se considera cumplido sin:
- implementacion
- prueba
- trazabilidad al requerimiento fuente

## Orden recomendado

1. Base del proyecto
2. Backend, datos y seguridad
3. Catalogo de cartas y Deck Builder
4. Gestion de partida y motor de juego
5. WebSockets y frontend
6. Pruebas, documentacion y cierre
