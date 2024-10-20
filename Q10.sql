-- Calculate the percentage contribution of each pizza type to total revenue

SELECT 
    pz_ty.category,
    concat(round((((SUM(od.quantity * pzz.price)) / (SELECT 
            ROUND(SUM(od.quantity * pz.price), 2) AS total_price
        FROM
            order_detail AS od
                JOIN
            pizzas AS pz ON od.pizza_id = pz.pizza_id))*100),2)," ", "%") as 'revenue in % '
FROM
    pizza_types AS pz_ty
        JOIN
    pizzas AS pzz ON pzz.pizza_type_id = pz_ty.pizza_type_id
        JOIN
    order_detail AS od ON od.pizza_id = pzz.pizza_id
GROUP BY pz_ty.category
order by 'revenue in % ' desc;





