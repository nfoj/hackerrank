-- Hackerrank

/*

Query the total population of all cities in CITY where District is California.

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


-- Solution

SELECT SUM(population)
FROM CITY
WHERE DISTRICT='California';
