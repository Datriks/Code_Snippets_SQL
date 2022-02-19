SELECT 
	website_session_id,
    created_at,
    month(created_at),
    week(created_at),
    year(created_at)

FROM mavenfuzzyfactory.website_sessions
where website_session_id BETWEEN 100000 and 115000