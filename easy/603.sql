# Write your MySQL query statement below
SELECT DISTINCT c1.seat_id AS seat_id
FROM cinema c1 JOIN cinema c2 ON ABS(c1.seat_id - c2.seat_id) = 1 AND c1.free = 1 AND c2.free = 1
ORDER BY c1.seat_id;
