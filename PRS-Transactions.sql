-- select * from User;
START Transaction;

Insert User (UserName, Password, FirstName, LastName, PhoneNumber, Email)
values 
('xxxx', 'xx', 'xx', 'xx','xx', 'xx');
ROLLBACK;

SELECT * from User;