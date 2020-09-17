create database college;
use college;
create table student (
	id int not null auto_increment,
    primary key (id),
    name varchar(50) not null,
    email varchar(100) not null,
    cell varchar(12),
    sat int not null,
    gpa float not null,
    bff bit not null
);
insert student values
(0, 'alice', 'alice@email.com', '513-555-1212', 1300, 3.5, 1),
(0, 'bill', 'bill@email.com', '513-555-1212', 1000, 2.5, 0),
(0, 'ben', 'ben@email.com', '513-555-1212', 1200, 2.7, 0);

insert student values
(null, 'amelia', 'am@email.com', '513-555-1212', 1300, 3.5, 1);

select * from student;