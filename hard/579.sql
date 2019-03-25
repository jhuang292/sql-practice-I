# Write your MySQL query statement below
SELECT e1.Id AS Id, e1.Month AS Month, (IFNULL(e1.Salary, 0) + IFNULL(e2.Salary, 0) + IFNULL(e3.Salary, 0)) AS Salary
FROM (
        SELECT Id, MAX(Month) AS Month
        FROM Employee
        GROUP BY Id
        HAVING COUNT(*) > 1
        ) maxMonth LEFT JOIN Employee e1 ON (maxMonth.Id = e1.Id AND maxMonth.Month > e1.Month)
        LEFT JOIN Employee e2 ON (maxMonth.Id = e2.Id AND e1.Month = e2.Month + 1)
        LEFT JOIN Employee e3 ON (maxMonth.Id = e3.Id AND e2.Month = e3.Month + 1)
ORDER BY Id ASC, Month DESC


