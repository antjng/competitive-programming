# Write your MySQL query statement below
WITH boarded AS (
    SELECT q1.turn, q1.person_name, (SELECT SUM(weight) FROM queue WHERE turn <= q1.turn) AS total_weight
    FROM queue q1
    ORDER BY turn
), boarded1000 AS (
    SELECT turn, person_name, total_weight
    FROM boarded
    WHERE total_weight <= 1000
)
SELECT person_name
FROM boarded1000
WHERE person_name NOT IN (
    SELECT b1.person_name
    FROM boarded1000 b1, boarded1000 b2
    WHERE b1.total_weight < b2.total_weight 
);