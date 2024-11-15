-- Write your PostgreSQL query statement below
SELECT distinct viewer_id as "id"
FROM views
WHERE viewer_id = author_id
ORDER BY viewer_id asc;