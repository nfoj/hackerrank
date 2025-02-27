-- Hackerrank

/*

Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboard's 0 key was broken until after completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary.

Write a query calculating the amount of error (i.e.: actual - miscalculated average monthly salaries), and round it up to the next integer.

Input Format

The EMPLOYEES table is described as follows:

| Column  | Type    |
|---------|---------|
| ID      | Integer |
| Name    | String  |
| Salary  | Integer |


Note: Salary is per month.

Constraints

1000 < Salary < 10^5


-- Input

| ID | Name    | Salary |
|----|---------|--------|
| 1  | Kristen | 1420   |
| 2  | Ashlei  | 2006   |
| 3  | Maria   | 2210   |
| 4  | Julia   | 3000   |


-- Output

2061


- Explanation

| ID | Name    | Salary |
|----|---------|--------|
| 1  | Kristen | 142    |
| 2  | Ashlei  | 26     |
| 3  | Maria   | 221    |
| 4  | Julia   | 3      |

Samantha computes an average salary of 98.00. The actual average salary is 2159.00.

The resulting error between the two calculations is 2159.00 - 98.00 = 2061.00. Since it is equal to the integer 2061, it does not get rounded up. 


-- Example:

Employees

1000
2050
3000

Cal

1000: 1000 - 1 = 999
2050: 2050 - 25 = 2025
3000: 3000 - 3 = 2997

(999 + 2025 + 2997) / 3 = 2007

Result

CEIL(2007) = 2007

*/


-- Solution

SELECT CEIL(AVG(Salary) - AVG(REPLACE(Salary, '0', '')))
FROM EMPLOYEES;


-- Solution_01

SELECT CEIL(AVG(Salary - CAST(REPLACE(CAST(Salary AS CHAR), '0', '') AS DECIMAL)))
FROM Employees;
