<div align="center">

# Problema de las Casas (Acertijo de Einstein)

**Práctica de Inteligencia Artificial en Prolog** — resolución por restricciones del clásico acertijo de las cinco casas.

[![SWI-Prolog](https://img.shields.io/badge/SWI--Prolog-8.x-007ACC?style=flat-square)](https://www.swi-prolog.org/)
[![IA](https://img.shields.io/badge/Inteligencia%20Artificial-Restricciones-6f42c1?style=flat-square)]()

</div>

---

## Descripción

Resolución del **acertijo de las cinco casas** (también conocido como el *Acertijo de Einstein* o *Zebra Puzzle*) en Prolog. Cinco vecinos, cinco colores, cinco nacionalidades, cinco mascotas, cinco bebidas y cinco cigarros, con **14 pistas** que dejan una única solución.

Cada pista se traduce a una restricción sobre la lista `Casitas`; el motor de búsqueda de Prolog encuentra la única asignación que satisface todas las restricciones.

## Características

- **5 casas** modeladas como listas de 6 campos: `[Número, Color, Nacionalidad, Bebida, Mascota, Cigarro]`.
- **14 pistas** traducidas a restricciones de posición, vecindad y membresía.
- Predicados auxiliares `vecino/3` y `vecino_izq/3` para las pistas de posición.
- Consultas directas: color, bebida, mascota o cigarro de cada persona.

## Tecnologías utilizadas

- **Lenguaje:** Prolog
- **Intérprete:** SWI-Prolog 8.x

## Requisitos previos

- [SWI-Prolog](https://www.swi-prolog.org/) instalado.

## Instalación

```bash
git clone https://github.com/Matthew-Garay/Problema-de-las-casas.git
cd Problema-de-las-casas
swipl problemascasas3.pl
```

## Uso

Una vez cargado el programa, consulta las soluciones:

```prolog
?- posicasa(Casitas).            % La solución completa
?- color(noruego, Color).        % Color de la casa del noruego
?- bebida(ingles, Bebida).       % Bebida del inglés
?- fuma(aleman, Cigarro).        % Cigarro del alemán
?- mascota(sueco, Mascota).      % Mascota del sueco
?- numero(danes, Numero).        % Número de casa del danés
```

## Estructura del proyecto

```
Problema-de-las-casas/
├── problemascasas3.pl           # Programa Prolog (acertijo + restricciones)
├── Practica 8. Problema de las casas terminado.pdf   # Reporte
├── Ejercicio casas.pdf
├── Casas.xlsx
└── README.md
```

## Licencia

Proyecto académico y educativo; puedes usarlo libremente con fines de aprendizaje.

## Autor

**Matthew Garay** — [GitHub](https://github.com/Matthew-Garay)

