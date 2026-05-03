# Write your MySQL query statement below
SELECT d.name AS Department, e.name AS Employee, e.salary AS Salary
FROM employee e LEFT JOIN department d
ON e.departmentid = d.id
WHERE 3 > (
    SELECT COUNT(DISTINCT(e2.salary))
    FROM employee e2
    WHERE e2.salary > e.salary
    AND e2.departmentid = e.departmentid
)