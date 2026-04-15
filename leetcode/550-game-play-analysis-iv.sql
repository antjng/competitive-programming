# Write your MySQL query statement below
WITH L1 AS (
    SELECT player_id, MIN(event_date) AS first
    FROM activity
    GROUP BY player_id
), L2 AS (
    SELECT a.player_id
    FROM activity a JOIN L1
    ON a.player_id = L1.player_id
    AND a.event_date = DATE_ADD(L1.first, INTERVAL 1 DAY)
    GROUP BY player_id
)
SELECT ROUND(COUNT(DISTINCT L2.player_id) / COUNT(DISTINCT L1.player_id), 2) AS fraction
FROM L1 LEFT JOIN L2
ON L1.player_id = L2.player_id;