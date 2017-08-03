/*sales_agent_customer_count.sql: Provide a query that shows the count of customers assigned to each sales agent.*/

select count(*), (e.firstname || " " || e.lastname) as name
from customer c join employee e on c.supportrepid = e.employeeid
group by name