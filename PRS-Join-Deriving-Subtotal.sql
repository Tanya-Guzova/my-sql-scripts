select r.Description, r.DeliveryMode, r.Status, r.Total, p.Name, p.Price, li.Quantity, 
concat (u.FirstName, ' ', u.LastName) as 'Name', u.PhoneNumber, (p.price * li.Quantity) as 'Subtotal'
from request r
join lineitem li on li.RequestID = r.ID
join Product p on p.ID = li.ProductID
join Vendor v on v.ID = p.VendorID
join User u on u.ID = r.UserID
