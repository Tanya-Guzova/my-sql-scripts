USE sys;

DROP DATABASE if EXISTS PRS;

CREATE DATABASE PRS;

USE PRS;

CREATE TABLE User (
ID int not null primary key auto_increment,
UserName varchar(20) unique not null,
Password varchar(10) not null,
FirstName varchar(20) not null,
LastName varchar(20) not null,
PhoneNumber varchar(12) not null,
Email varchar(75) not null,
IsReviewer bit default 0,
IsAdmin bit default 0
);

INSERT USER
(UserName, Password, FirstName, LastName, PhoneNumber, Email)
values 
('tb', 'qwerty1', 'Tom', 'Brown', '5132833200', 'tb@gmail.com'),
('rm', 'qwerty2', 'Robert', 'Miles', '5132833201', 'rm@gmail.com'),
('st', 'qwerty3', 'Steve', 'Madden', '5132833202', 'sm@gmail.com');

select * from User;

CREATE TABLE Vendor (
ID int not null primary key auto_increment,
Code varchar(10) unique not null,
Name varchar(255) not null,
Address varchar(255) not null,
City varchar(255) not null,
State varchar(255) not null,
Zip varchar(5) not null,
PhoneNumber varchar(12) not null,
Email varchar(100) not null
);

INSERT Vendor
(Code, Name, Address, City, State, Zip, PhoneNumber, Email)
values 
('123', 'BL', '415 4th Street', 'Cincinnati', 'OH', '45063', '5132833204', 'bl@gmail.com'),
('124', 'P&G', '54 Mason Montgomery Rd', 'Mason', 'OH', '45040', '5132833205', 'pg@gmail.com'),
('125', 'PPD', '415 4th Street', 'Cincinnati', 'OH', '45063', '5132833206', 'ppd@gmail.com');

select * from Vendor;

CREATE TABLE Product (
ID int not null primary key auto_increment,
VendorID int not null, foreign key(VendorID) references Vendor(ID),
PartNumber varchar(50),
Constraint vendor_part unique (VendorID, PartNumber),
Name varchar(150) not null,
Price decimal(10,2) not null,
Unit varchar(255),
PhotoPath varchar(255)
);

INSERT Product
(VendorID, PartNumber, Name, Price, Unit, PhotoPath)
values
(1, '1111', 'Set of 3 Towels', 300, '10', 'http:...'),
(2, '1123', 'Crest Toothpaste', 40, '20', 'http:...'),
(3, '1124', 'Paint', 100, '10', 'http:...');

select * from Product;

CREATE TABLE Request (
ID int not null primary key auto_increment,
UserID int not null, 
foreign key(UserID) references User(ID),
Description varchar(100) not null,
Justification varchar(255) not null,
DateNeeded date not null,
DeliveryMode varchar(25) not null,
Status varchar(20) not null default 'New',
Total decimal(10,2) not null default 0,
SubmittedDate datetime not null default current_timestamp,
ReasonForRejection varchar(100)
);

INSERT Request
(UserID, Description, Justification, DateNeeded, DeliveryMode)
values
(1, 'Order1a', 'Just need it', '20201105', 'pickup'),
(1, 'Order1b', 'Just need it', '20201105', 'pickup'),
(2, 'Order2', 'Just need it', '20201105', 'pickup'),
(3, 'Order3', 'Just need it', '20201105', 'pickup');

select * from Request;

CREATE TABLE LineItem (
ID int not null primary key auto_increment,
RequestID int not null, foreign key(RequestID) references Request(ID),
ProductID int not null, foreign key(ProductID) references Product(ID),
Quantity int not null default 1
);


INSERT LineItem
(RequestID, ProductID, Quantity)
values
(1, 1, 5), -- purchase request1
(1, 2, 2), -- purchase request1
(1, 3, 1), -- purchase request1
(2, 2, 5), -- purchase request2
(2, 3, 5), -- purchase request2
(3, 3, 5), -- purchase request3
(4, 1, 1); -- purchase request4

select * from LineItem;

DROP USER IF EXISTS prs_user@localhost;
CREATE USER prs_user@localhost IDENTIFIED BY 'sesame';
GRANT SELECT, INSERT, DELETE, UPDATE ON prs.* TO prs_user@localhost;