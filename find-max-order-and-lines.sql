select c.Name, o.Description, 
	ol.Product, ol.Quantity, ol.Price, 
	ol.Quantity * ol.Price as 'Total'
from customers c
join orders o
on o.CustomerId = c.Id
join orderlines ol
on o.Id = ol.OrdersId
where c.Name like 'MAX%';