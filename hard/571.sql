# Write your MySQL query statement below
SELECT AVG(n.Number) AS median
FROM Numbers n
WHERE (
        ABS((SELECT SUM(Frequency) FROM Numbers WHERE Number <= n.Number) - 
           (SELECT SUM(Frequency) FROM Numbers WHERE Number >= n.Number)) <= n.Frequency
        )
