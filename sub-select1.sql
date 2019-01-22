select * from customers where sales > (select avg(sales)
from customers);