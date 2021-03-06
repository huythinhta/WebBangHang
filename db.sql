create database AssignmentSOF301;
go
use AssignmentSOF301;
go
create table Customers
(
	username varchar(20) primary key,
	password varchar(20) not null,
	lastname varchar(20) null,
	email varchar(50) null,
	phonenumber varchar(11)null,
	address varchar(50)null,
	isAdmin bit default(0),
)
go
insert into Customers(username,password,lastname,email,phonenumber,address,isAdmin) values ('phong','linh','phong','phong@gmail.com','0123456789','HCM',1);
insert into Customers(username,password,lastname,email,phonenumber,address,isAdmin) values ('linh','phong','linh','linh@gmail.com','0987654321','HN',0);
insert into Customers(username,password,lastname,email,phonenumber,address,isAdmin) values ('phonglinh','linhphong','linhphong','phonglinh@gmail.com','0143618484','DN',0);
insert into Customers(username,password,lastname,email,phonenumber,address,isAdmin) values ('thinh','123','huythinh','thinh@gmail.com','0143618484','Q12',1);
go
create table Categories
(
	Code varchar(50) primary key,
	Name varchar(50)
)
go
insert into Categories values ('SM','SmartPhone')
insert into Categories values ('LT','Laptop')
go
create table Products
(
	Code varchar(50) primary key,
	Name varchar(100),
	Price float,
	Category varchar(50) foreign key references Categories(Code),
	Img varchar(50) null
)
go
insert into Products values ('SP001','Nokia110',50.0,'SM','img/nokia110.jpg');
insert into Products values ('SP002','ASUS 2',300.0,'SM','img/asus2.jpg');
insert into Products values ('SP003','ASUS 3',450.0,'SM','img/asus3.jpg');
insert into Products values ('SP004','Iphone 3',20.0,'SM','img/iphone3.jpg');
insert into Products values ('SP005','Iphone 6',600.0,'SM','img/iphone6.jpg');

INSERT into Products values('IP1','Iphone X',1000,'SM','hinh/IphoneX.jpg');
INSERT into Products values('IP2','Iphone 8',800,'SM','hinh/Iphone8.jpg');
INSERT into Products values('IP3','Iphone 11',2000,'SM','hinh/Iphone11.jpg');
INSERT into Products values('IP4','Iphone 7',600,'SM','hinh/Iphone7.jpg');
INSERT into Products values('IP5','Iphone XS',1500,'SM','hinh/IphoneXS.jpg');
select * from Products
select * from customers