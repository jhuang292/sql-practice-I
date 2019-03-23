# Write your MySQL query statement below
SELECT d.dept_name AS dept_name, COUNT(s.student_id) AS student_number
FROM student s RIGHT JOIN department d ON s.dept_id = d.dept_id
GROUP BY d.dept_id
ORDER BY COUNT(s.student_id) DESC, d.dept_name;
