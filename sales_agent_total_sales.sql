/*sales_agent_total_sales.sql: Provide a query that shows total sales made by each sales agent.*/

select sum(i.total) as total, (e.firstname || " " || e.lastname) as name
from invoice i join customer c on i.customerid = c.customerid
join employee e on c.supportrepid = e.employeeid
group by name