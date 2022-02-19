-- Business Context: we want to see landing page performance for a certain time period
-- step1 : find the first website pageview_id for relevant sessions
-- step 2: identify the landing page of each session
-- step 3: counting pageviews for each session, to identify "bounces"
-- step 4: summarising total sessions and bounced sessions, by LP -landing page

-- finding the minimum website pageview id associated with each session we care about
SELECT 
	p.website_session_id,
    min(p.website_pageview_id) as min_pageview_id
FROM mavenfuzzyfactory.website_pageviews as p
	inner join website_sessions as s
		on p.website_session_id = s.website_session_id
        and s.created_at BETWEEN '2014-01-01' and '2014-02-01'
GROUP BY
	p.website_session_id;
    
-- the same query as above but this time we are storing the dataset as a temporary table

create temporary table first_pageviews_demo
SELECT 
	p.website_session_id,
    min(p.website_pageview_id) as min_pageview_id
FROM mavenfuzzyfactory.website_pageviews as p
	inner join website_sessions as s
		on p.website_session_id = s.website_session_id
        and s.created_at BETWEEN '2014-01-01' and '2014-02-01'
GROUP BY
	p.website_session_id;
    
-- next we will bring in the landing page to each session
# create temporary table sessions_w_landing_page_demo
select 
	fpd.website_session_id,
    wp.pageview_url as landing_page
from first_pageviews_demo as fpd
left join website_pageviews as wp
on fpd.min_pageview_id = wp.website_pageview_id;

-- next we make a table to include a count of pageviews per session
-- create a temporary table bounced_sessions_only

create temporary table bounced_sessions_only
select 
	swlpd.website_session_id,
    swlpd.landing_page,
    count(wp.website_pageview_id) as count_of_pages_viewed
from sessions_w_landing_page_demo as swlpd
left JOIN website_pageviews as wp
on swlpd.website_session_id = wp.website_session_id
group by swlpd.website_session_id,
		swlpd.landing_page
-- limit the sessions where the count website_pageview_id =1
HAVING 
	count(wp.website_pageview_id) = 1;

select  
	swlpd.landing_page,
    swlpd.website_session_id,
    bso.website_session_id as bounced_website_session_id
from sessions_w_landing_page_demo as swlpd
	left join bounced_sessions_only as bso
		on swlpd.website_session_id = bso.website_session_id
ORDER BY 
	swlpd.website_session_id;

-- final output
-- we wil use the same query we previously ran, and run a count of records
-- we will group by landing page, and then we will add a bounce rate column
select 
	swlpd.landing_page,
    count(distinct swlpd.website_session_id) as sessions,
	count(distinct bso.website_session_id) as bounced_sessions,
    count(distinct bso.website_session_id)/count(distinct swlpd.website_session_id)*100.0 as bounce_rate_perc
from sessions_w_landing_page_demo as swlpd
	left join bounced_sessions_only as bso
		on swlpd.website_session_id = bso.website_session_id
group by swlpd.landing_page
order by count(distinct swlpd.website_session_id);

























    
    
