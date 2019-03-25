# Write your MySQL query statement below
SELECT e1.Id, e1.Company, e1.Salary
FROM Employee e1, Employee e2
WHERE e1.Company = e2.Company
GROUP BY e1.Id
HAVING 1 >= ABS(SUM(CASE
                        WHEN e1.Salary > e2.Salary THEN 1
                        WHEN e1.Salary < e2.Salary THEN -1
                        WHEN e1.Salary = e2.Salary AND e1.Id > e2.Id THEN 1
                        WHEN e1.Salary = e2.Salary AND e1.Id < e2.Id THEN -1 
                        ELSE 0
                    END))
ORDER BY e1.Company, e1.Salary
