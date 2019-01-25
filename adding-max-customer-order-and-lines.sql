insert into Customers (
Name, City, State, Sales, Active)
values 
('Max Technical Training', 'Mason', 'OH', 100000, 1)

insert into Orders (
CustomerId, date, Description)
values
(38, getdate(), 'The first max order of widgets')

insert into OrderLines (
OrdersId, Product, Quantity, price)
values
(30, 'Echo Dot', 1, 39.99) 