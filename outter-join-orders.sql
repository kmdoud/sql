select *
from customers c
left join orders o 
on o.CustomerId = c.Id
where o.id is null
order by c.Id