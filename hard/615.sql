# Write your MySQL query statement below
SELECT tb1.pay_month AS pay_month, tb1.department_id AS department_id, CASE
                                                                            WHEN tb1.depart_avg > tb2.comp_avg THEN 'higher'
                                                                            WHEN tb1.depart_avg < tb2.comp_avg THEN 'lower'
                                                                            ELSE 'same'
                                                                        END AS comparison
FROM (
        SELECT DATE_FORMAT(s.pay_date, '%Y-%m') AS pay_month, e.department_id AS department_id, AVG(s.amount) AS depart_avg 
        FROM salary s JOIN employee e ON s.employee_id = e.employee_id
        GROUP BY e.department_id, DATE_FORMAT(s.pay_date, '%Y-%m')
        ORDER BY DATE_FORMAT(s.pay_date, '%Y-%m') DESC
        ) tb1 JOIN (
                    SELECT DATE_FORMAT(pay_date, '%Y-%m') AS pay_month, AVG(amount) AS comp_avg
                    FROM salary
                    GROUP BY DATE_FORMAT(pay_date, '%Y-%m')                    
                    ) tb2 ON tb1.pay_month = tb2.pay_month;





