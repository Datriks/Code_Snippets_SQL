SELECT 
	month(created_at),
    week(created_at),
    min(date(created_at)) as week_start,
    count(distinct website_session_id) as sessions
FROM mavenfuzzyfactory.website_sessions
where website_session_id BETWEEN 100000 and 115000
GROUP BY 1,2