# Desafío - Manipulación de datos y transaccionalidad en las operaciones

## Descripción

Este proyecto es parte de un desafío para validar nuestros conocimientos de Consultas Agrupadas en SQL. Implica crear consultas SQL para responder preguntas específicas sobre un conjunto de datos de inscripciones.

## Conjunto de datos

El desafío utiliza una tabla llamada `INSCRITOS` con la siguiente estructura:

- `cantidad` (INT): Número de inscritos
- `fecha` (DATE): Fecha de inscripción
- `fuente` (VARCHAR): Fuente de inscripción (Blog o Página)

## Objetivos

Crear consultas SQL para responder las siguientes preguntas:

1. ¿Cuántos registros hay?
2. ¿Cuántos inscritos hay en total?
3. ¿Cuál o cuáles son los registros de mayor antigüedad?
4. ¿Cuántos inscritos hay por día?
5. ¿Qué día se inscribieron la mayor cantidad de personas y cuántas personas se inscribieron en ese día?

## Requerimientos

- Crear una base de datos llamada `desafio2-tuNombre-tuApellido-3digitos` donde los 3 dígitos son escogidos por ti al azar.
- Utilizar la consola para crear la tabla e insertar los registros.
- Generar un reporte en un archivo .doc de Google o Word donde muestres los resultados de cada consulta solicitada.

## Puntuación

Cada consulta declarada en la descripción tiene un valor de 2 puntos, para un total de 10 puntos.

## Configuración

Para configurar la base de datos y la tabla, ejecuta los siguientes comandos SQL:

```sql
CREATE TABLE IF NOT EXISTS INSCRITOS(cantidad INT, fecha DATE, fuente VARCHAR);

INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES
( 44, '01/01/2021', 'Blog' ),
( 56, '01/01/2021', 'Página' ),
( 39, '01/02/2021', 'Blog' ),
( 81, '01/02/2021', 'Página' ),
( 12, '01/03/2021', 'Blog' ),
( 91, '01/03/2021', 'Página' ),
( 48, '01/04/2021', 'Blog' ),
( 45, '01/04/2021', 'Página' ),
( 55, '01/05/2021', 'Blog' ),
( 33, '01/05/2021', 'Página' ),
( 18, '01/06/2021', 'Blog' ),
( 12, '01/06/2021', 'Página' ),
( 34, '01/07/2021', 'Blog' ),
( 24, '01/07/2021', 'Página' ),
( 83, '01/08/2021', 'Blog' ),
( 99, '01/08/2021', 'Página' );
```

## Consejos

- Utiliza subconsultas cuando sea necesario, especialmente para encontrar los registros más antiguos.
- Presta atención a las funciones de agrupación y agregación para los recuentos de inscripciones diarias.
- Lee todo el documento antes de comenzar el desarrollo individual para asegurarte de obtener el máximo puntaje y enfocar bien los esfuerzos.


