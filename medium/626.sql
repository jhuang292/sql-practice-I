# Write your MySQL query statement below
SELECT CASE
            WHEN MOD(id, 2) = 1 AND id != counts THEN id + 1
            WHEN MOD(id, 2) = 1 AND id = counts THEN id
            ELSE id -1
        END AS id, student
FROM seat, (SELECT COUNT(*) AS counts FROM seat) tb
ORDER BY id ASC;
