SELECT
    c.first_name,
    c.last_name,
    c.city,
    o.order_details

FROM customers c

LEFT JOIN orders o 
    ON o.cust_id = c.id