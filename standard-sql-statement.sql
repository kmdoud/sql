select name as 'Customer Name', concat(city, ', ', state) as 'City,State', sales as 'Quarter sales'
from customers where city = 'Cincinnati' and sales >= 30000
order by sales desc; 