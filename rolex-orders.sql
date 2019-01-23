select c.Name as 'High "Rollers"', count(*) 'Number of Rolexs ordered'
from OrderLines ol
join orders o
on ol.OrdersId = o.Id
join customers c
on o.CustomerId = c.Id
where ol.Description = 'rolex'
group by c.Name
order by c.name
