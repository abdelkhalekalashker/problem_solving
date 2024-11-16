-- Write your PostgreSQL query statement below
SELECT u.unique_id, e.name 
FROM employees as e
LEFT JOIN EmployeeUNI as u
ON e.id = u.id