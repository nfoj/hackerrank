-- Hackerrank

/*

Query the average population for all cities in CITY, rounded down to the nearest integer.

Input Format

City

| Field       | Type         |
|-------------|--------------|
| ID          | NUMBER       |
| Name        | VARCHAR2(17) |
| COUNTRYCODE | VARCHAR2(3)  |
| DISTRICT    | VARCHAR2(20) |
| POPULATION  | NUMBER       |

*/


-- Solution_00

SELECT ROUND(AVG(population))
FROM CITY;


-- Solution_01

SELECT ROUND(AVG(population), 0) AS population
FROM CITY;


-- Solution_02

SELECT FLOOR(AVG(population)) AS population
FROM CITY;


-- Solution_03

SELECT ROUND(SUM(population) / COUNT(population))
FROM CITY;


-- Solution_04

SELECT TRUNCATE(AVG(Population), 0) 
FROM City;
