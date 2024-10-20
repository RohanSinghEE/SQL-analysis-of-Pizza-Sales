-- Join the necessary tables to find the total quantity of each pizza category ordered.


SELECT 
    pz_ty.category, SUM(od.quantity) AS total_quantity
FROM
    pizza_types AS pz_ty
        JOIN
    pizzas AS pz ON pz_ty.pizza_type_id = pz.pizza_type_id
        JOIN
    order_detail AS od ON od.pizza_id = pz.pizza_id
GROUP BY pz_ty.category;






