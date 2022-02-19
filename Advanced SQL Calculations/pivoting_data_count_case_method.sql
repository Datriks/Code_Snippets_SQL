SELECT 
	order_id,
    primary_product_id,
    items_purchased
FROM mavenfuzzyfactory.orders
where order_id BETWEEN 31000 and 32000;

#### pivoting with count case
select
	primary_product_id,   # 1
   # order_id, # use this to get a granular table  #2
   # items_purchased, # use this to get a granular values of the table   #3
    count(distinct case when items_purchased = 1 then order_id else null end) as single_item_orders,
    count(distinct case when items_purchased = 2 then order_id else null end) as two_item_orders,
    count(DISTINCT order_id) as total_orders
from orders
where order_id between 30000 and 32000
group by 1 # when using the granular table group by all (1,2,3)


