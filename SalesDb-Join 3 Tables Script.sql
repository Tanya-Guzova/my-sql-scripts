select *
from Customers c 
join Orders o
on c.Id = o.CustomerId
join Orderlines ol 
on o.Id = ol.OrdersId;