-- CREAR BASE DE DATOS
CREATE DATABASE desafio2_Natalia_Pena_569;

-- CREAR TABLA
CREATE TABLE IF NOT EXISTS INSCRITOS(cantidad INT, fecha DATE, fuente
VARCHAR);
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 44, '01/01/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 56, '01/01/2021', 'Página' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 39, '01/02/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 81, '01/02/2021', 'Página' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 12, '01/03/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 91, '01/03/2021', 'Página' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 48, '01/04/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 45, '01/04/2021', 'Página' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 55, '01/05/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 33, '01/05/2021', 'Página' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 18, '01/06/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 12, '01/06/2021', 'Página' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 34, '01/07/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 24, '01/07/2021', 'Página' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 83, '01/08/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 99, '01/08/2021', 'Página' );


-- PREGUNTA 1 - Cuántos registros hay?
SELECT COUNT(cantidad) FROM inscritos;
-- 16 

-- PREGUNTA 2 - Cuántos inscritos hay en total?
SELECT SUM(cantidad) FROM inscritos;
-- 774 

-- Pregunta 3 - Cuál o cuales son los registros de mayor antiguedad?
SELECT fecha, cantidad, fuente from inscritos WHERE fecha in (SELECT max(fecha) FROM inscritos);
-- 2021-01-08  83 Blog
-- 2021-01-08  99 Página

-- Pregunta 4 - ¿Cuántos inscritos hay por día? (entendiendo un día como una fecha distinta de ahora en adelante)
SELECT SUM(cantidad), fecha FROM inscritos GROUP BY fecha ORDER BY fecha ASC;
-- 100  2021-01-01
-- 120 2021-01-02
-- 103 2021-01-03
-- 93 2021-01-04
-- 88 2021-01-05
-- 30 2021-01-06
-- 58 2021-01-07
-- 182 2021-01-08

-- Pregunta 5 - ¿Qué día se inscribieron la mayor cantidad de personas y cuántas personas se inscribieron en ese día?
SELECT SUM(cantidad) AS total, fecha FROM inscritos GROUP BY fecha ORDER BY total DESC LIMIT 1;
-- 182 2021-01-08



