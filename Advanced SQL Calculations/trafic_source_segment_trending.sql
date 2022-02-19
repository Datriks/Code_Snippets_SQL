# Trafic Source Segment Trending
SELECT 
	w.device_type,
    year(w.created_at) as yr,
    week(w.created_at) as wk,
    min(date(w.created_at)) as week_start,
    count(w.website_session_id) as sessions,
    count(o.order_id) as orders,
    concat(count(o.order_id)/count(w.website_session_id)*100.0," ", "%") as CVR_percent
FROM mavenfuzzyfactory.website_sessions as w
	left join orders as o
		on w.website_session_id = o.website_session_id
where w.created_at < '2012-04-15'
		and w.utm_source = 'gsearch'
        and w.utm_campaign = 'nonbrand'
GROUP BY 1,2,3