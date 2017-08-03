/*top_3_artists.sql: Provide a query that shows the top 3 best selling artists.*/

select count(*) as top_selling_artist_overall_count, ar.name as artist_name from invoiceline il join track t on il.trackid = t.trackid
join album a on a.albumid = t.albumid
join artist ar on ar.artistid = a.artistid
group by artist_name
order by top_selling_artist_overall_count desc
limit 3