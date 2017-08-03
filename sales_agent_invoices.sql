/*sales_agent_invoices.sql: Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.*/

select i.*, (e.firstname || " " || e.lastname) as employee_name
from employee e join customer c on e.employeeid=c.supportrepid
join invoice i on i.customerid= c.customerid
order by invoiceid

