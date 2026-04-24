# Write your MySQL query statement below
(
    SELECT u.name AS results
    FROM movierating mr LEFT JOIN users u
    ON mr.user_id = u.user_id
    GROUP BY mr.user_id
    ORDER BY COUNT(u.user_id) DESC, u.name ASC
    LIMIT 1
)

UNION ALL

(
    SELECT m.title AS results
    FROM movies m LEFT JOIN movierating mr
    ON m.movie_id = mr.movie_id
    WHERE mr.created_at BETWEEN '2020-02-01' AND '2020-02-29'
    GROUP BY m.movie_id, m.title
    ORDER BY AVG(mr.rating) DESC, m.title ASC
    LIMIT 1
)
