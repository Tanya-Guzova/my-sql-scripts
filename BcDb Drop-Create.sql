-- you cannot drop a DB when in that same DB you have to be in a different DB
USE sys;

DROP DATABASE if Exists bcdb;

CREATE database bcdb;

USE bcdb;

Create table Customers (
ID int not null primary key auto_increment,
Code varchar (10) not null unique,
Name varchar (30) not null,
Sales decimal(9,2) not null default 0,
Active bit not null default 1,
Created datetime not null default current_timestamp
);

insert Customers 
(Code, Name)
values 
('123', 'ACME FG'),
('342', 'Tom LTD'),
('345', 'Quick and Easy Repair');

select * from Customers;

Create table Orders (
ID int primary key auto_increment,
Description varchar(30) not null,
Total decimal(9,2) not null default 0,

CustomerID int not null,
foreign key(CustomerID) references Customers(ID)
);
insert Orders 
(Description, Total, CustomerID)
values 
('1st order', 4, 1),
('2nd order', 10, 2);
select * from  Orders