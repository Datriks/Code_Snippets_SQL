SELECT 
w.utm_content,
count(distinct w.website_session_id) as sessions,
count(DISTINCT o.order_id) as orders,
count(DISTINCT o.order_id)/count(distinct w.website_session_id)*100.0 as session_to_order_conv_rt
FROM mavenfuzzyfactory.website_sessions as w
left join orders as o
on w.website_session_id = o.website_session_id
GROUP BY 1
ORDER BY 2 desc;