# Bid Optimisation and Trend Analysis
SELECT 
	-- year(created_at) as year,
    -- week(created_at)  as week,
    min(date(created_at)) as week_start,
	count(DISTINCT website_session_id) as  sessions
FROM website_sessions
where created_at <= '2012-05-12'
	and utm_source = 'gsearch'
    and utm_campaign = 'nonbrand'
group by 
	year(created_at),
    week(created_at)
    
		