/*Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.*/

select i.total,(c.firstname || " " || c.lastname) as customer_name,i.billingcountry,(e.lastname || " " || e.firstname) as sales_agent_name
from invoice i join customer c on i.customerid = c.customerid
join employee e on c.supportrepid = e.employeeid
