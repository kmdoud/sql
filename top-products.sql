select Description, count(*) as 'Units Sold', sum(quantity * price) as 'product revenue'
from OrderLines
group by Description
order by sum(quantity * price) desc