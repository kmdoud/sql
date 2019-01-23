select o.date as 'Order Date',o.Description as 'Order Description', c.name as 'Customer Name',
ol.Product, ol.Description, ol.Price, ol.Quantity
from orders o --alias for 'orders'
join customers c --alias for 'customers'
on customerid = c.id --how you want to join the two tables
join OrderLines oL
on oL.OrdersId = o.Id
order by c.id

 --where orders.id = 1;