select c.*, o.*, ol.*
from customers c
join orders o
on C.Id = o.CustomerId
join orderlines ol
on ol.OrdersId = o.Id
where C.name = 'nationwide'