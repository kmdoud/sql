select c.name 
from orders o
join customers c
on c.Id = o.CustomerId
where o.id = 21