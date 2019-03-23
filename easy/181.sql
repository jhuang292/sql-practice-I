# Write your MySQL query statement below
SELECT e1.Name AS Employee
FROM Employee e1, Employee e2 
WHERE e1.Salary > e2.Salary AND e1.ManagerId = e2.Id;
