# Problema de las Casas (Acertijo de Einstein)

<p align="center">
  <a href="https://github.com/Matthew-Garay/Problema-de-las-casas/actions/workflows/ci.yml"><img src="https://github.com/Matthew-Garay/Problema-de-las-casas/actions/workflows/ci.yml/badge.svg" alt="CI Status"/></a>
  <a href="https://github.com/Matthew-Garay/Problema-de-las-casas/security/dependabot"><img src="https://img.shields.io/badge/Dependabot-enabled-blue?style=flat-square&logo=github&labelColor=555555" alt="Dependabot"/></a>
</p>

Resolucion del acertijo de las cinco casas (tambien conocido como el Acertijo de Einstein o Zebra Puzzle) en Prolog. Cinco vecinos, cinco colores, cinco nacionalidades, cinco mascotas, cinco bebidas y cinco cigarros, con 14 pistas que dejan una unica solucion.

Cada pista se traduce a una restriccion sobre la lista `Casitas`; el motor de busqueda de Prolog encuentra la unica asignacion que satisface todas las restricciones.

## Stack tecnologico

- **Lenguaje:** SWI-Prolog
- **Paradigma:** Programacion logica, resolucion por restricciones
- **Entorno:** SWI-Prolog 8.x

## Arquitectura

```mermaid
graph TD
    A[Pistas del acertijo] --> B[Restricciones en Prolog]
    B --> C[Motor de busqueda con backtracking]
    C --> D[Solucion unica de las 5 casas]
    D --> E[Asignacion: color, nacionalidad, mascota, bebida, cigarro]
    
    style A fill:#e1f5fe,stroke:#01579b
    style B fill:#fff3e0,stroke:#e65100
    style C fill:#e8f5e9,stroke:#1b5e20
    style D fill:#f3e5f5,stroke:#4a148c
    style E fill:#ffe0b2,stroke:#ef6c00
```

## Caracteristicas

- Resolucion del acertijo de las cinco casas con 14 pistas logicas
- Uso de predicados de Prolog para modelar restricciones
- Busqueda con backtracking para encontrar la solucion unica
- Codigo modular y documentado

## Como ejecutar

### Requisitos previos

- SWI-Prolog 8.x instalado

### Ejecucion

1. Clona el repositorio:
   ```bash
   git clone https://github.com/Matthew-Garay/Problema-de-las-casas.git
   cd Problema-de-las-casas
   ```
2. Ejecuta el archivo principal con SWI-Prolog:
   ```bash
   swipl -s problemascasas3.pl -g "main" -t "halt"
   ```
3. El programa muestra la solucion completa del acertijo en consola.

## Estructura del proyecto

```
Problema-de-las-casas/
├── problemascasas3.pl       # Codigo fuente en Prolog
├── Casas.xlsx               # Datos de referencia del acertijo
├── .gitignore               # Archivos excluidos del control de versiones
├── LICENSE                  # Licencia MIT
├── README.md                # Este archivo
└── docs/                    # Documentacion extendida
    ├── setup-guide.md       # Guia de instalacion
    └── architecture.md      # Diagrama de arquitectura
```

## Contacto

<p align="center">
  <a href="mailto:1911.garay.perez@gmail.com"><img src="https://img.shields.io/badge/Email-D14836?style=for-the-badge&logo=gmail&logoColor=white" alt="Email"/></a>
  <a href="https://www.linkedin.com/in/matthewgarayperez/"><img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn"/></a>
</p>
