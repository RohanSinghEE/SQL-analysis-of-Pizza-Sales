-- Group the orders by date and calculate the average number of pizzas ordered per day


SELECT 
    ROUND(AVG(quantity)) as avg_order_per_day
FROM
    (SELECT 
        od.date, SUM(odd.quantity) AS quantity
    FROM
        orders AS od
    JOIN order_detail AS odd ON od.order_id = odd.order_id
    GROUP BY od.date) AS avgquantity;
    
    
    
