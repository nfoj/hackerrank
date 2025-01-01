-- Hackerrank

/*

Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

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

SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE 'A%' OR 
      CITY LIKE 'E%' OR 
      CITY LIKE 'I%' OR 
      CITY LIKE 'O%' OR 
      CITY LIKE 'U%';


-- Solution_01

SELECT DISTINCT CITY
FROM STATION
WHERE SUBSTR(CITY, 1, 1) IN ('A', 'E', 'I', 'O', 'U') ORDER BY 1;


-- Solution_02

SELECT DISTINCT CITY
FROM STATION
WHERE SUBSTR(LOWER(CITY), 1, 1) IN ('a', 'e', 'i', 'o', 'u') ORDER BY CITY ASC;

/*

Note:

Substring

'London'
'Paris'

SUBSTR('London', 1, 1) = 'L'
SUBSTR('Paris', 1, 1) = 'P'

#!---------------------!#

Lower

'Tokyo'
'New York'

LOWER('Tokyo') = 'tokyo'
LOWER('New York') = 'new york'

#!---------------------!#

ORDER BY ASC

'Athens'
'Orlando'
'Edmonton'
'Irvine'

'Athens'
'Edmonton'
'Irvine'
'Orlando'

*/
