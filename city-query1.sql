select city, sum(sales), count(*)
from customers
group by city having sum(sales) > 600000;