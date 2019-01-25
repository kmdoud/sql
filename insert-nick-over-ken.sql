begin transaction

update customers
 set sales = 200
 where name like 'nick%'

 commit

 select * from customers where name like 'nick%'