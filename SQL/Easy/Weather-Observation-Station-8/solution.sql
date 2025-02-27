-- Hackerrank

/*

Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.

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
WHERE RIGHT(LOWER(CITY), 1) IN ('a', 'e', 'i', 'o', 'u')
  AND  LEFT(LOWER(CITY), 1) IN ('a', 'e', 'i', 'o', 'u')
ORDER BY CITY ASC;


-- Solution_01

SELECT DISTINCT CITY
FROM STATION
WHERE LOWER(SUBSTR(CITY, 1, 1)) IN ('a', 'e', 'i', 'o', 'u')
  AND LOWER(SUBSTR(CITY, LENGTH(CITY), 1)) IN ('a', 'e', 'i', 'o', 'u')
ORDER BY CITY ASC;


-- Solution_02

SELECT DISTINCT CITY
FROM STATION
WHERE SUBSTRING(City,1,1) IN ('a','e','o','i','u')
  AND SUBSTRING(City,-1) IN ('a','e','o','i','u')
ORDER BY City ASC;


/*

Note:

Substring

'London'
'Paris'

SUBSTR('London', 1, 1) = 'L'
SUBSTR('Paris', 1, 1) = 'P'

SUBSTR('London', -1, 1) = 'n'

#!---------------------!#

Lower

'Tokyo'
'New York'

LOWER('Tokyo') = 'tokyo'
LOWER('New York') = 'new york'


#!---------------------!#

Length

Nova York = 9
Brasília = 9

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
