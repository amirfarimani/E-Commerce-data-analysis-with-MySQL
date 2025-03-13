-- based on the conversion rate analysis , company bid down gsearch nonbrand on 2012--4-15.

-- to see the result  we pull gsearcg nonbrand trended sessiom volume by week : 

select
     -- year(created_at) as year,
     -- week(created_at) as month,
     min(date(created_at)) as stating_date,
     count(distinct website_session_id) as sessions
from website_sessions
where created_at < '2012-05-10'
      AND utm_source = 'gsearch'
      AND utm_campaign = 'nonbrand'
group by year(created_at) , week(created_at);