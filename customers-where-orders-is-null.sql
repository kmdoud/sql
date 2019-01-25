select *
from  Customers c
left join orders o
on o.CustomerId = c.Id
where o.CustomerId is null 
