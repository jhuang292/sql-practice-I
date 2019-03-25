# Write your MySQL query statement below
SELECT d.Name AS Department, e.Name AS Employee, e.Salary AS Salary
FROM Employee e JOIN Department d ON e.DepartmentId = d.Id
WHERE 3 > (
            SELECT COUNT(DISTINCT e1.Salary)
            FROM Employee e1
            WHERE e1.Salary > e.Salary AND e1.DepartmentId = e. DepartmentId
                )
