# Traffic Source Segment Trending
SELECT 
	# website_session_id,
    # year(created_at) as yr,
	# week(created_at) as week,
	min(date(created_at)) as week_start_date,
    count(distinct case when device_type = 'desktop' then website_session_id else null end) as dtop_sessions,
    count(DISTINCT case when device_type = 'mobile' then website_session_id else null end) as mob_sessions,
    count(distinct website_session_id) as total_sessions
FROM mavenfuzzyfactory.website_sessions
where created_at BETWEEN '2012-04-15' and '2012-06-09'
		and utm_source = 'gsearch'
        and utm_campaign = 'nonbrand'
GROUP BY year(created_at),
		 week(created_at);