-- Calculate the total revenue generated from pizza sales


SELECT 
    ROUND(SUM(od.quantity * pz.price), 2) AS revenue
FROM
    order_detail AS od
        JOIN
    pizzas AS pz ON od.pizza_id = pz.pizza_id;




