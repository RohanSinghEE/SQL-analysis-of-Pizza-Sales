-- Determine the distribution of orders by hour of the day.

SELECT 
    HOUR(time) as"hour" , COUNT(order_id) AS "orders"
FROM
    orders
GROUP BY HOUR(time)
ORDER BY HOUR(time);



