/* What are the respective total sales for each of those years?*/

select sum(i.total) ,strftime('%Y',I.INVOICEDATE) AS INVOICEYEAR
from invoice i
where invoiceyear = '2009' or invoiceyear = '2011'
group by invoiceyear

