# Write your MySQL query statement below
SELECT MAX(salary) SecondHighestSalary
FROM employee
WHERE salary <> (
    SELECT MAX(SALARY) FROM employee
)