select *
from Customers
where  city = 'Cincinnati' and sales >= 30000 and sales < 40000
order by sales desc