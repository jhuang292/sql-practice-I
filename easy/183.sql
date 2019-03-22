# Write your MySQL query statement below
SELECT Name AS Customers
FROM Customers
WHERE Id NOT IN (
                        SELECT c.Id AS Id
                        FROM Customers c INNER JOIN Orders o ON c.Id = o.CustomerId 
                        );
