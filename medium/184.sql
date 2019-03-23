# Write your MySQL query statement below
SELECT d.Name AS Department, e.Name AS Employee, e.Salary AS Salary
FROM Employee e JOIN Department d ON e.DepartmentId = d.Id
WHERE (d.Name, e.Salary) IN (
                                SELECT d.Name AS Department, MAX(e.Salary) AS Salary
                                FROM Employee e JOIN Department d ON e.DepartmentId = d.Id
                                GROUP BY d.Id
                                );
