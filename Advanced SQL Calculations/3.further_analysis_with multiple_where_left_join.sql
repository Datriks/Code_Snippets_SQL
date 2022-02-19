SELECT 
	count(DISTINCT w.website_session_id) as sessions,
	count(DISTINCT o.order_id) as orders,
	count(DISTINCT o.order_id)/count(DISTINCT w.website_session_id)*100.0 as session_to_order_conv_rt
FROM website_sessions as w	
	left join orders as o
on w.website_session_id = o.website_session_id
where o.created_at < '2012-04-14' 
    and w.utm_source = 'gsearch' 
    and w.utm_campaign = 'nonbrand';