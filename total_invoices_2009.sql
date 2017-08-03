/*How many Invoices were there in 2009 and 2011?*/

select count(*)  as numberofinvoices, strftime('%Y',i.invoicedate) as invoiceyear
from invoice i where invoiceyear= '2009'  or invoiceYEAR = '2011'
group by invoiceyear