select city, state, sum(sales)
from Customers
group by city
having city = 'Cincinnati' or City = 'Columbus'