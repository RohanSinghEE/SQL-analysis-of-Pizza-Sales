-- Determine the top 3 most ordered pizza types based on revenue for each pizza category.


select category, name, revenue 
from 
(select category, name, revenue,
rank() over (partition by category order by revenue desc ) as ranking 
from
(SELECT 
    pz_ty.category, pz_ty.name,
     round(SUM(od.quantity * pzz.price),2) as revenue
FROM
    pizza_types AS pz_ty
        JOIN
    pizzas AS pzz ON pzz.pizza_type_id = pz_ty.pizza_type_id
        JOIN
    order_detail AS od ON od.pizza_id = pzz.pizza_id
GROUP BY pz_ty.category, pz_ty.name) as a) as b
where ranking <=3;




