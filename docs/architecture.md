# Arquitectura - Problema de las Casas

## Visión general

Implementación en Prolog del acertijo de las cinco casas (Acertijo de Einstein), resolviendo un problema de satisfacción de restricciones mediante búsqueda con backtracking.

## Decisiones de arquitectura

### ADR-001: Programación lógica con Prolog

**Estado:** Aceptado  
**Contexto:** El problema requiere modelar relaciones lógicas entre entidades (casas, colores, nacionalidades, mascotas, bebidas, cigarros) y encontrar una asignación que satisfaga todas las restricciones.  
**Decisión:** Usar Prolog con predicados para representar las restricciones y dejar que el motor de búsqueda con backtracking encuentre la solución.  
**Consecuencias:** Código declarativo y conciso, limitado al entorno Prolog.

## Tecnologías

- SWI-Prolog 8.x
