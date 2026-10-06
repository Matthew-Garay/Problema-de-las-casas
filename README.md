# Problema de las casas

Practica de IA en Prolog. El acertijo de las cinco casas: cinco vecinos, cinco colores, cinco nacionalidades, cinco mascotas, cinco bebidas y cinco cigarros, con catorce pistas que dejan una sola solucion.

El archivo `problemascasas3.pl` traduce cada pista a una restriccion sobre la lista `Casitas`. Cada casa es una lista de seis campos `[Numero, Color, Nacionalidad, Bebida, Mascota, Cigarro]`, y los predicados `vecino/3` y `vecino_izq/3` resuelven las pistas de posicion.

## Requisitos

SWI-Prolog.

## Uso

```bash
swipl problemascasas3.pl
```

```prolog
?- color(noruego, Color).
?- bebida(ingles, Bebida).
?- fuma(aleman, Cigarro).
?- mascota(sueco, Mascota).
```
