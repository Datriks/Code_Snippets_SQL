# Trafic Source Bid Optimisation
SELECT 
	device_type,
	count(w.website_session_id) as sessions,
    count(o.order_id) as orders,
    concat(count(o.order_id)/count(w.website_session_id)*100.0," ","%") as CVR_percent
FROM mavenfuzzyfactory.website_sessions as w
	left join orders as o
    on w.website_session_id = o.website_session_id
where w.created_at < '2012-05-11'
		and w.utm_source = 'gsearch'
        and w.utm_campaign = 'nonbrand'
GROUP BY device_type;