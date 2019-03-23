# Write your MySQL query statement below
SELECT name
FROM customer
WHERE id NOT IN (
                    SELECT c1.id AS name
                    FROM customer c1 JOIN customer c2 ON c1.referee_id = c2.id
                    WHERE c1.referee_id = 2
                    );
