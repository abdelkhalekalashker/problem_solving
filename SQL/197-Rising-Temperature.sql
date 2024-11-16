-- Write your PostgreSQL query statement below
SELECT today.id as Id
FROM weather today
JOIN weather yesterday
ON Date(today.recordDate) = DATE(yesterday.recordDate + 1)
WHERE today.temperature > yesterday.temperature