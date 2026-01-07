'''O conjunto de dados inclui endereço, tipo de imóvel, subúrbio, 
método de venda, quartos, preço, corretor imobiliário, data de 
venda e distância do CBD'''

-- UPLOAD DADOS A DUCKDB
CREATE TABLE melb_data AS
SELECT * FROM 'Aprendizaje Personal/data/melb_data.csv';

-- MOSTRAR TABLAS
SHOW TABLES;

-- CONSULTA SIMPLE
SELECT * FROM melb_data LIMIT 5;

-- CONSULTA ALGUMAS COLUMNAS
SELECT Suburb, Price, Rooms FROM melb_data LIMIT 10;

-- CONSULTA COM ALIAS
SELECT Suburb AS Barrio, Price AS Precio, Rooms AS Cuartos FROM melb_data LIMIT 10;

--Agora que usamos o SELECT, vamos a aprender o uso do WHERE para filtragem de dados.

-- CONSULTA COM FILTRO

-- 1. Filtrar 10 casa con numero de habitaciones > 5
SELECT * FROM melb_data WHERE Rooms > 5 LIMIT 10;

-- 2. Filtrar 10 casas en el suburbio de 'Richmond'
SELECT * FROM melb_data WHERE Suburb = 'Richmond' LIMIT 10;

-- 3. Filtrar 10 casas con precio mayor a 1,500,000
SELECT * FROM melb_data WHERE Price > 1500000 LIMIT 10;

-- 4. Filtrar 10 casas con precio menor a 1,500,000 y con 5 o más 
--habitaciones en el suburbio de 'Bentleigh'
SELECT * FROM melb_data
WHERE Price < 1500000 
AND Rooms >= 5 
AND Suburb = 'Bentleigh'
LIMIT 10;

-- 5. Filtrar 10 casas con 1 o 2 habitaciones y precio entre 100,000 y 500,000
SELECT * FROM melb_data
WHERE Rooms IN (1,2)
AND Price BETWEEN 100000 AND 500000
LIMIT 10;

-- CONSULTA COM FILTRO USANDO LIKE E WILDCARDS
SELECT Suburb, Price, YearBuilt, Car FROM melb_data
WHERE Suburb LIKE '%%' LIMIT 10;

SELECT Suburb, Price, YearBuilt, Car FROM melb_data
WHERE Suburb LIKE 'Airport Wes_' LIMIT 10;

