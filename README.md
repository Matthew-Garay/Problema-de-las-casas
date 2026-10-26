# Problema de las Casas Acertijo de Einstein

## A. Titulo del Proyecto y Resumen Ejecutivo

Problema de las Casas es una implementacion en Prolog del acertijo de las cinco casas, tambien conocido como Acertijo de Einstein o Zebra Puzzle. El sistema modela cinco vecinos, cinco colores, cinco nacionalidades, cinco mascotas, cinco bebidas y cinco cigarros, con 14 pistas logicas que dejan una unica solucion valida. Cada pista se traduce a una restriccion sobre la lista de casas y el motor de busqueda de Prolog encuentra la asignacion unica que satisface todas las restricciones. Su alcance tecnologico se limita a la ejecucion local en SWI-Prolog, sin componentes de red ni persistencia de datos.

## B. Arquitectura del Sistema

El programa sigue una arquitectura de programacion logica basada en resolucion por restricciones. El flujo de datos comienza con la definicion de las 14 pistas del acertijo traducidas a restricciones logicas sobre la lista de casas. El motor de busqueda con backtracking de Prolog explora el espacio de asignaciones posibles, probando combinaciones y retrocediendo cuando una restriccion no se satisface, hasta encontrar la unica asignacion valida que cumple todas las condiciones. Finalmente, el programa imprime la solucion completa en consola con la asignacion de color, nacionalidad, mascota, bebida y cigarro para cada una de las cinco casas. No existe arquitectura cliente-servidor ni capas de persistencia.

## C. Caracteristicas Tecnicas Clave

- Resolucion del acertijo de las cinco casas con 14 pistas logicas.
- Modelado de restricciones utilizando predicados de Prolog.
- Busqueda con backtracking para encontrar la solucion unica.
- Asignacion de cinco atributos por casa: color, nacionalidad, mascota, bebida y cigarro.
- Codigo modular y documentado.
- No utiliza base de datos, ni concurrencia, ni procesamiento en tiempo real, ni protocolos de red.
- Seguridad limitada al ambito de ejecucion local; no maneja datos sensibles ni autenticacion.

## D. Especificacion del Stack Tecnologico

| Categoria | Tecnologia / Librería |
|-----------|----------------------|
| Lenguaje | SWI-Prolog 8.x |
| Paradigma | Programacion logica, resolucion por restricciones |
| Entorno | SWI-Prolog 8.x |

## E. Guia de Instalacion, Configuracion y Despliegue

### Requisitos previos del sistema

- SWI-Prolog 8.x instalado en el sistema operativo.
- Acceso a terminal o consola de comandos.

### Secuencia de comandos para clonacion e instalacion

```bash
git clone https://github.com/Matthew-Garay/Problema-de-las-casas.git
cd Problema-de-las-casas
```

### Configuracion de variables de entorno

Este proyecto no requiere archivo .env ni variables de entorno.

### Comandos para ejecucion en entorno de Desarrollo

```bash
swipl -s problemascasas3.pl -g "main" -t "halt"
```

### Comandos para ejecucion en entorno de Produccion

No aplica entorno de produccion separado; el programa se ejecuta localmente con el mismo comando de desarrollo.

## F. Creditos de Autoría

Desarrollado por: Matthew Ilveneff Garay Pérez
Correo Electronico: 1911.garay.perez@gmail.com
