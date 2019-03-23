# Write your MySQL query statement below
SELECT name
FROM salesperson
WHERE sales_id NOT IN (
                        SELECT s.sales_id AS sales_id
                        FROM salesperson s, company c, orders o
                        WHERE o.sales_id = s.sales_id AND o.com_id = c.com_id AND c.name = 'RED'
                            );
