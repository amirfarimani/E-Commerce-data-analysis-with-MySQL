-- Top traffic resources  

select utm_source ,
       utm_campaign ,
       http_referer,  
	   count(distinct  website_session_id) as sessions
from website_sessions 
where created_at < '2012-04-12' 
group by utm_source , utm_campaign , http_referer
order by utm_source , utm_campaign desc;

