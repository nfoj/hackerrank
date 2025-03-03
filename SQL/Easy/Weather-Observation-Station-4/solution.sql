-- Hackerrank

/*

Find the difference between the total number of CITY entries in the table and the number of distinct CITY 
entries in the table.

The STATION table is described as follows:

| Field | Type         |
|-------|--------------|
| ID    | NUMBER       |
| CITY  | VARCHAR2(21) |
| STATE | VARCHAR2(2)  |
| LAT_N | NUMBER       |
| LAT_W | NUMBER       |

where LAT_N is the northern latitude and LONG_W is the western longitude.

For example, if there are three records in the table with CITY values 'New York', 'New York', 'Bengalaru', 
there are 2 different city names: 'New York' and 'Bengalaru'. The query returns 1, because.

total number of records - number of unique city names 

3 - 2 = 1

*/

-- Solution

SELECT COUNT(CITY) - COUNT(DISTINCT CITY)
FROM STATION;

/*

Note: 

City number

SELECT COUNT(CITY)
FROM STATION;

Result =  499

#!----------------!#

City Distinct 

SELECT COUNT(DISTINCT CITY)
FROM STATION;

Result = 486

#!---------------!#

499 - 486 = 13

*/
