select * from customers
where name in (select name from customers where id in(5,10,15,20,25)) 
order by sales desc;