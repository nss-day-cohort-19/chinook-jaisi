/*top_agent.sql: Which sales agent made the most in sales over all?*/
select max(w.total), w.name
from 
(select sum(i.total) as total, (e.firstname || " " || e.lastname) as name
from invoice i join customer c on i.customerid = c.customerid
join employee e on c.supportrepid = e.employeeid
group by name) w