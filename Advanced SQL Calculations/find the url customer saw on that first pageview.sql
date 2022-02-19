# find the first page for each session and create temporary table
create temporary table first_pageview
SELECT 
	website_session_id,
    min(website_session_id) as min_pv_id
FROM 
	mavenfuzzyfactory.website_pageviews
where created_at < '2012-06-12'
group by website_session_id;

# view how the join look like
SELECT 
    *
FROM first_pageview AS f
        LEFT JOIN website_pageviews AS w 
		ON f.min_pv_id = w.website_session_id
WHERE created_at < '2012-06-12';

# step 2 find the url customer saw on that first pageview
SELECT 
    w.pageview_url AS landing_page_url,
    COUNT(DISTINCT f.website_session_id) AS sessions_hitting_page
FROM first_pageview AS f
        LEFT JOIN website_pageviews AS w 
		ON f.min_pv_id = w.website_pageview_id
GROUP BY w.pageview_url;

