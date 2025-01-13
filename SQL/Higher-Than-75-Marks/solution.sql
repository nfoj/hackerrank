-- Hackerrank

/*

Query the Name of any student in STUDENTS who scored higher than 75 Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

Input Format

The STUDENTS table is described as follows:

| Column | Type    |
|--------|---------|
| ID     | Integer |
| Name   | String  |
| Marks  | Integer |

only contains uppercase (A-Z) and lowercase (a-z) letters.

Sample Input

| ID | Name     | Marks |
|----|----------|-------|
| 1  | Ashley   | 81    |
| 2  | Samantha | 75    |
| 4  | Julia    | 76    |
| 3  | Belvet   | 84    |

Output

Ashley
Julia
Belvet

*/


-- Solution

SELECT NAME
FROM STUDENTS
WHERE MARKS > 75
ORDER BY RIGHT(LOWER(NAME), 3), ID ASC;


-- Solution_01

SELECT NAME
FROM STUDENTS
WHERE MARKS > 75
ORDER BY LOWER(SUBSTR(NAME, -3)), ID ASC;


/*

Note:

SELECT NAME
FROM STUDENTS
WHERE MARKS > 75
ORDER BY LOWER(SUBSTR(NAME, LENGTH(NAME), 3)), ID ASC;

When trying to use the code above, you will receive an error because the order of the names will not be the same due to the use of LENGTH.

*/
