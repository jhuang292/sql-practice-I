# Write your MySQL query statement below
SELECT DISTINCT p1.Email AS Email
FROM Person p1, Person p2
WHERE p1.Id != p2.Id AND p1.Email = p2.Email;
