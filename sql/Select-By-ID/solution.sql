-- Hackerrank

-- Select By ID

/*

Query all columns for a city in CITY with the ID 1661.

The CITY table is described as follows:

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

SELECT *
FROM CITY
WHERE ID = '1661';
