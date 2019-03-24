# Write your MySQL query statement below
SELECT id, CASE
                WHEN tree.p_id IS NULL THEN 'Root'
                WHEN tree.id IN (SELECT DISTINCT p_id FROM tree) THEN 'Inner'
                ELSE 'Leaf'
            END AS Type
FROM tree

