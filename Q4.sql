-- List the top 5 most ordered pizza types along with their quantities.

SELECT 
    pz.pizza_type_id as pizza_type,
    COUNT(od.order_id) AS total_order,
    SUM(od.quantity) AS total_quantity
FROM
    pizzas AS pz
        JOIN
    order_detail AS od ON pz.pizza_id = od.pizza_id
GROUP BY pz.pizza_type_id
ORDER BY total_order DESC
LIMIT 5;




