/*line_item_track.sql: Provide a query that includes the purchased track name with each invoice line item.*/

select t.name,i.invoicelineid
from invoiceline i join track t on i.trackid = t.trackid
order by invoicelineid
