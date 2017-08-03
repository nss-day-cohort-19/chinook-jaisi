/*top_media_type.sql: Provide a query that shows the most purchased Media Type.*/

select count(*) as media_type_count , m.name as media_type
from mediatype m join track t on m.mediatypeid=t.mediatypeid
join invoiceline il on il.trackid = t.trackid
group by media_type
order by media_type_count desc
limit 1