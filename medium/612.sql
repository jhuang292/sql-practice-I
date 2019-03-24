# Write your MySQL query statement below
SELECT ROUND(MIN(tb.shortest),2) AS shortest
FROM (
        SELECT SQRT(pow(p1.x - p2.x, 2) + pow(p1.y - p2.y, 2)) AS shortest
        FROM point_2d p1, point_2d p2
        WHERE p1.x != p2.x OR p1.y != p2.y
        ) tb;
