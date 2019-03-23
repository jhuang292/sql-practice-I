# Write your MySQL query statement below
SELECT *
FROM cinema
WHERE id NOT IN (
                    SELECT id
                    FROM cinema 
                    WHERE description = "boring"
                    ) AND MOD(id, 2) = 1
ORDER BY rating DESC;
