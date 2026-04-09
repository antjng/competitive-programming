# Write your MySQL query statement below
SELECT w1.id AS Id FROM weather w1 JOIN weather w2 ON DATEDIFF(w1.recorddate, w2.recorddate) = 1 WHERE w1.temperature > w2.temperature