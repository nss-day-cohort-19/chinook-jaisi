/*top_country.sql: Which country's customers spent the most?*/

select max(w.total), billingcountry
from (select sum(total) as total, billingcountry
from invoice 
group by billingcountry) w