-- Hackerrank

/*

Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880 and less than 137.2345. Truncate your answer to decimal places.

Input Format

The STATION table is described as follows:

| Field | Type         |
|-------|--------------|
| ID    | NUMBER       |
| CITY  | VARCHAR2(21) |
| STATE | VARCHAR2(2)  |
| LAT_N | NUMBER       |
| LAT_W | NUMBER       |

where LAT_N is the northern latitude and LONG_W is the western longitude.

*/

-- Solution

SELECT ROUND(SUM(LAT_N), 4)
FROM STATION
WHERE LAT_N > 38.7880 AND LAT_N < 137.2345;


-- Solution_01

SELECT TRUNCATE(SUM(LAT_N), 4)
FROM STATION
WHERE LAT_N > 38.7880 AND LAT_N < 137.2345;

/*

Note:

ROUND: rounds the value based on mathematical rules;
TRUNCATE: deletes values ​​after the comma;

*/
