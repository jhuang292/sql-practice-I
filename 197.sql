# Write your MySQL query statement below
SELECT w2.Id AS Id
FROM Weather w1 JOIN Weather w2 ON DATEDIFF(w2.RecordDate, w1.RecordDate) = 1 AND w1.Temperature < w2.Temperature

