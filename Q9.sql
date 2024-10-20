-- Determine the top 3 most ordered pizza types based on revenue.

SELECT 
    pz_ty.name, round(SUM(od.quantity * pzz.price),2) AS revenue
FROM
    pizza_types AS pz_ty
        JOIN
    pizzas AS pzz ON pzz.pizza_type_id = pz_ty.pizza_type_id
        JOIN
    order_detail AS od ON od.pizza_id = pzz.pizza_id
GROUP BY pz_ty.name
ORDER BY revenue DESC
LIMIT 3;


