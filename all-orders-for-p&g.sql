select *
from customers c
join orders o
on o.CustomerId = c.Id
where name = 'P&G';