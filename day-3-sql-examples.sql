--select count(*) from customers;
--select * from customers;
--select name, city from customers;
--select * from customers where city = 'Cleveland';
--select * from customers where city = 'Cleveland' or city = 'Columbus';
--select * from customers where city in ('cleveland' , 'columbus');
select * from customers where city = 'Cincinnati' order by sales desc;