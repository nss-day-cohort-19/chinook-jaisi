/*top_5_tracks.sql: Provide a query that shows the top 5 most purchased tracks over all.*/

select count(*) as track_count, t.name from track t join invoiceline il on t.trackid=il.trackid
group by t.name
order by track_count desc
limit 5

