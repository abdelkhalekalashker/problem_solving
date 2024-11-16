-- Write your PostgreSQL query statement below
SELECT customer_id, COUNT(v.*) as count_no_trans
FROM visits V
LEFT JOIN Transactions T
ON V.visit_id = T.visit_id
WHERE T.transaction_id IS NULL
group by customer_id