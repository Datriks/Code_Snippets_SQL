# Most view pages by session volume
SELECT 
	pageview_url,
    count(distinct website_pageview_id) as pvs
FROM mavenfuzzyfactory.website_pageviews
where created_at < '2012-06-09'
GROUP BY pageview_url
order by pvs desc;