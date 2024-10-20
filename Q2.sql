-- Identify the highest-priced pizza.

SELECT 
    pz_ty.name, pz.price
FROM
    pizza_types AS pz_ty
        JOIN
    pizzas AS pz ON pz_ty.pizza_type_id = pz.pizza_type_id
ORDER BY pz.price DESC
LIMIT 1;


