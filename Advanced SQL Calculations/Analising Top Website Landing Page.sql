# Analising Top Website Landing Page
# 1 create the temporary table
create TEMPORARY table first_pageview
SELECT 
	website_session_id,
    min(website_pageview_id)as min_pv_id
FROM mavenfuzzyfactory.website_pageviews
where website_pageview_id < 1000
GROUP BY website_session_id;

# 2 Extracting the landing page for each session
select 
	f.website_session_id,
    w.pageview_url as landing_page   -- entry page
from first_pageview as f
left join website_pageviews as w
on f.min_pv_id = w.website_pageview_id;

# 3. count the nr of landing pages or hits.
select 
	w.pageview_url as landing_page,
    count(w.pageview_url) as nr_landing_page
from first_pageview as f
left join website_pageviews as w
on f.min_pv_id = w.website_pageview_id
GROUP BY w.pageview_url
ORDER BY w.pageview_url desc;