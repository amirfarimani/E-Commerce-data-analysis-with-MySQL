-- traffic conversion rates from sessions to order 

select w.utm_content ,
count( distinct w.website_session_id) as sessions,
count(distinct o.order_id) as orders,
count(distinct o.order_id) / count(distinct w.website_session_id) as session_to_order_cnr_rate
from website_sessions w
left join orders o
on o.website_session_id=w.website_session_id
where w.website_session_id between 1000 and 2000
group by 1
order by 2 DESC;

