# Write your MySQL query statement below
SELECT e1.name FROM employee e1 LEFT JOIN employee e2 ON e1.id = e2.managerid GROUP BY e1.id HAVING COUNT(*) >= 5