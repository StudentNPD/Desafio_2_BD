-- PREGUNTA 1 - 
SELECT COUNT(cantidad) FROM inscritos;
-- 16 

-- PREGUNTA 2- 
SELECT SUM(cantidad) FROM inscritos;
-- 774 

SELECT fecha, cantidad, fuente from inscritos WHERE fecha in (SELECT max(fecha) FROM inscritos);
-- 2021-01-08  83 Blog
-- 2021-01-08  99 Página

