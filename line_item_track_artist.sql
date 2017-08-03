/*line_item_track_artist.sql: Provide a query that includes the purchased track name AND artist name with each invoice line item.*/

select t.name as trackname,i.invoicelineid,ar.name as artistname
from invoiceline i join track t on i.trackid = t.trackid
join album a on a.albumid = t.albumid
join artist ar on ar.artistid = a.artistid
order by invoicelineid
