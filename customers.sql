
select o.customer_id, c.name, c.email, min(o.created_at) as first_order_at, count(o.id) as number_of_orders
from `analytics-engineers-club.coffee_shop.orders` o
left join `analytics-engineers-club.coffee_shop.customers` c on o.customer_id=c.id
group by o.customer_id,c.name,c.email
order by first_order_at
limit 5;