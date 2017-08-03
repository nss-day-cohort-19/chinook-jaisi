/*top_2013_track.sql: Provide a query that shows the most purchased track of 2013.*/

select count(il.trackid) as my_count, t.name from track t join invoiceline il on t.trackid=il.trackid join invoice i on i.invoiceid=il.invoiceid
where strftime('%Y',i.invoicedate) = '2013' 
group by t.name
order by my_count  desc
limit 1






