# Write your MySQL query statement below
SELECT e.Name AS Name
FROM Employee e, (
                    SELECT ManagerId
                    FROM Employee
                    GROUP BY ManagerId
                    HAVING COUNT(Id) >= 5
                    ) tb
WHERE e.Id = tb.ManagerId;
