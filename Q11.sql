-- Analyze the cumulative revenue generated over time.

select date,
round(sum(revenue) over ( order by date),2) as cumulative_revenue
from
(select orders.date, round (sum(order_detail.quantity*pizzas.price),2) as revenue
from order_detail
join  pizzas
on order_detail.pizza_id=pizzas.pizza_id
join orders
on orders.order_id=order_detail.order_id
group by orders.date) as day_revenue;