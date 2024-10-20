-- Identify the most common pizza size ordered.

SELECT 
    pz.size as pizza_size , COUNT(od.order_id) AS total_order
FROM
    pizzas AS pz
        JOIN
    order_detail AS od ON pz.pizza_id = od.pizza_id
GROUP BY pz.size
ORDER BY total_order DESC
LIMIT 1;





