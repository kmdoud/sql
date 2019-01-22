select format(sum(sales), 'C') as'Total Sales',
 format(avg(sales), 'C') as'Average Sales' ,
  min(sales) as 'Smallest Sale',
   max(sales) as 'Highest Sale',
    count(*) as 'Number of Customers'
from customers;