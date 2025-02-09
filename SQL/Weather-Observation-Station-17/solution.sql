-- Hackerrank

/*

Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7780. Round your answer to decimal 4 places.

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

SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N > 38.7780
ORDER BY LAT_N ASC
LIMIT 1;


-- Solution_01;

SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N IN (
    SELECT MIN(LAT_N)
    FROM STATION
    WHERE LAT_N > 38.7790
);
