

SELECT concat_ws(', ',customers.company_Name , STRING_AGG(orders.order_id::character varying, ',' ))AS Dats
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id
GROUP BY customers.company_Name
ORdER BY customers.company_Name
; 