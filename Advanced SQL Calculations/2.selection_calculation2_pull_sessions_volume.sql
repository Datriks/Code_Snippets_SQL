SELECT 
	utm_source,
    utm_campaign,
    http_referer,
    count(DISTINCT website_session_id) as sessions
FROM mavenfuzzyfactory.website_sessions
where created_at < '2012-04-12'
group by 
	utm_source,
    utm_campaign,
    http_referer
ORDER BY sessions desc
