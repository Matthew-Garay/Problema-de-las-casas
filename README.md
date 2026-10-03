# Problema de las casas

Práctica de Inteligencia Artificial en Prolog. Plantea el problema lógico
clásico de las cinco casas: cinco vecinos, cinco colores, cinco nationalities,
cinco mascotas, cinco bebidas y cinco cigarrillos, con catorce pistas que
determinan la solución completa.

## Cómo está resuelto

`problemascasas3.pl` traduce cada una de las catorce pistas a una restricción
sobre la lista `Casitas`. Cada elemento es una casa de seis campos:

```prolog
[Numero, Color, Nacionalidad, Bebida, Mascota, Cigarrillo]
```

Las pistas:

| # | Pista | Predicado usado |
|---|-------|-----------------|
| 1 | El noruego vive en la primera casa | `member/2` |
| 2 | El de la casa del centro toma leche | `member/2` |
| 3 | El inglés vive en la casa roja | `member/2` |
| 4 | La mascota del Sueco es un perro | `member/2` |
| 5 | El danés bebe té | `member/2` |
| 6 | La casa verde está a la izquierda de la blanca | `vecino_izq/3` |
| 7 | El de la casa verde toma café | `member/2` |
| 8 | El que fuma PallMall cría pájaros | `member/2` |
| 9 | El de la casa amarilla fuma Dunhill | `member/2` |
| 10 | El que fuma Blend vive junto al de los gatos | `vecino/3` |
| 11 | El de los caballos vive junto al que fuma Dunhill | `vecino/3` |
| 12 | El que fuma BlueMaster bebe cerveza | `member/2` |
| 13 | El alemán fuma Prince | `member/2` |
| 14 | El que fuma Blend tiene un vecino que bebe agua | `vecino/3` |

`vecino_izq/3` recorre la lista de izquierda a derecha y devuelve el par
consecutivo; `vecino/3` lo llama dos veces, en los dos sentidos, para que la
pista sirva diga lo mismo que si el vecino estuviera a la izquierda o a la
derecha.

## Predicados de consulta

```prolog
?- color(noruego, Color).
?- bebida(ingles, Bebida).
?- fuma(aleman, Cigarrillo).
?- mascota(sueco, Mascota).
?- numero(danes, Numero).
```

## Cómo ejecutarlo

Hace falta [SWI-Prolog](https://www.swi-prolog.org/).

```bash
swipl problemascasas3.pl
```

## Estado actual

**Los cinco predicados de consulta (`color/2`, `bebida/2`, `fuma/2`,
`mascota/2`, `numero/2`) todavía no resuelven el problema.** Su cuerpo llama a
`posicasa(Casitas)`, que solo construye una plantilla convariables `_` en todos
los campos, y consulta `member/2` sobre esa plantilla. Al no haber una lista
real de casas, `Casitas` queda sin instancia y las consultas devuelven `false`.

Para que funcionen falta el paso que falta: generar la lista `Casitas` con las
catorce restricciones aplicadas a la vez, de forma que el motor de Prolog devuelva
la solución única. La forma habitual es envolver las pistas en un `findall/3`
que recolecta los candidatos y un predicado que descarte los que incumplen
alguna pista.

## Nota sobre la codificación

El archivo está en **UTF-8 sin BOM**. Venía en Windows-1252 y además tenía diez
espacios duros (`0xA0`) metidos en la sangría de las líneas 65, 68, 71, 74 y 77.
Prolog no trata el espacio duro como separador, así que rompía la lectura de
esas cinco cláusulas.
