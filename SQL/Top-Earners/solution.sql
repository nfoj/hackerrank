-- HackerRank

/*

We define an employee's total earnings to be their monthly salary x months worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these values as 2 space-separated integers.

Input Format

The Employee table containing employee data for a company is described as follows: 


| Column      | Type    |
|-------------|---------|
| employee_id | Integer |
| name        | String  |
| months      | Integer |
| salary      | Integer |

where employee_id is an employee's ID number, name is their name, months is the total number of months they've been working for the company, and salary is the their monthly salary.


-- Input

| employer_id | name     | months | salary |
|-------------|----------|--------|--------|
| 12228       | Rose     | 15     | 1969   |
| 33645       | Angela   | 1      | 3443   |
| 45692       | Frank    | 17     | 1608   |
| 56118       | Patrick  | 7      | 1345   |
| 59725       | Lisa     | 11     | 2330   |
| 74197       | Kimberly | 16     | 4372   |
| 78454       | Bonnie   | 8      | 1771   |
| 83565       | Michael  | 6      | 2017   |
| 98607       | Todd     | 5      | 3396   |
| 99989       | Joe      | 9      | 3573   |


-- Output

69952 1

*/


-- Solution

SELECT MAX(salary * months), COUNT(name)
FROM Employee
WHERE 1=1 AND (salary * months) >= (SELECT MAX(salary * months) FROM Employee);



-- Solution_01

SELECT months * salary, COUNT(*)
FROM Employee
GROUP BY 1 ORDER BY 1 DESC LIMIT 1;
