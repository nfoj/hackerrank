-- Hackerrank

/*

Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.

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
WHERE COUNTRYCODE='JPN';
