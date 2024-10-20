-- Join relevant tables to find the category-wise distribution of pizzas.

SELECT 
    category, COUNT(pizza_type_id) as num_of_pizza
FROM
    pizza_types
GROUP BY category
order by num_of_pizza desc;


