# Write your MySQL query statement below
WITH friends AS (
    (
        SELECT requester_id AS id
        FROM requestaccepted
    )

    UNION ALL

    (
        SELECT accepter_id AS id
        FROM requestaccepted
    )
)
SELECT id, COUNT(*) AS num
FROM friends
GROUP BY id
ORDER BY num DESC
LIMIT 1