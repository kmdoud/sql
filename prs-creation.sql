use master;
go
alter database prsdb set single_user with rollback immediate
go
drop database if exists prsdb;
go
create database prsdb;
go
use prsdb;
go
--after this create your tables
create table Users (
id int not null primary key identity (1,1),
Username nvarchar(30) not null unique,
Password nvarchar(30) not null,
Firstname nvarchar(30) not null,
Lastname nvarchar(30) not null,
Phone nvarchar(12),
Email nvarchar(255),
IsReviewer bit not null default 0,
IsAdmin bit not null default 0,
Active bit not null default 1
);

insert into Users (
 Username, Password, Firstname, Lastname, Phone, Email, IsReviewer, IsAdmin, Active
)
values
('kmdoud', 'Bengal00', 'Kenneth', 'Doud', '513-600-3890', 'kenneth.doud@outlook.com', 1, 1, 1),
('nsdoud', 'Wild00', 'Nicholas', 'Doud', '513-600-4732', 'nsdoud@live.com', 1, 0, 1),
('gpdoud', 'Bearcat00', 'Gregory', 'Doud', '513-703-7315', 'gpdoud@gmail.com', 0, 0, 1);  

create table Vendors (
id int not null primary key identity (1,1),
Code nvarchar(4) not null unique,
Name nvarchar(50) not null,
Address nvarchar(30),
City nvarchar(30),
State nchar(2),
Zip nvarchar(10),
Phone nvarchar(12),
Email nvarchar(255),
IsPreferred bit not null default 1,
Active bit not null default 1
);

insert into Vendors (
Code, Name, Address, City, State, Zip, Phone, Email, IsPreferred, Active)
values
(1, 'Amazon', '1122 We Sell Stuff St', 'Boonetown', 'WS', '12345', '555-123-1234', 'amazon@wesellstuff.com', 1, 1),
(2, 'Walmart', '2233 Wallyworld Rd', 'Cheapstuff', 'NY', '67890', '555-567-8901', 'wally@wallyworld.com', 0, 1)
;

create table Products (
id int not null primary key identity (1,1),
VendorId int not null foreign key references Vendors(id),
PartNumber nvarchar(30) not null,
Name nvarchar(30) not null,
Price decimal(9,2) not null default 0,
Unit nvarchar(10) not null default 'Each',
PhotoPath nvarchar(255),
Active bit not null default 1
);

Insert into Products (
VendorId, PartNumber, Name, Price, Unit, Active)
values
(1, 001, 'Ship', '100000.00', 'Each', 1),
(2, 110, 'Sweater', '10.00', 'Each',1)
;

create table Requests (
id int not null primary key identity (1,1),
UserId int not null foreign key references Users(id),
Description nvarchar(80),
Justification nvarchar(80),
RejectionReason nvarchar(80),
DeliveryMode nvarchar(30),
ReviewDate datetime not null default getdate(),
Status nvarchar(10) not null default 'NEW'
	check (Status in ('NEW', 'REVIEW', 'APPROVED', 'REJECTED')),
Total decimal(11,2) not null default 1
);

insert into Requests (
UserId, Description, Justification, RejectionReason, DeliveryMode, ReviewDate, Status, Total)
values
(2, 'Sweater request', 'I am cold', 'It is not hot', 'Air', GETDATE(), 'NEW', '10.00')

create table RequestLines (
id int not null primary key identity(1,1),
Productsid int not null foreign key references Products(id),
RequestsId int not null foreign key references Requests(id),
Quantity int not null default 1
);

insert into RequestLines (
Productsid, RequestsId, Quantity)
values
(2, 1, 1);


select * from Users;
select * from Vendors;
select * from Products;
select * from Requests;
select * from RequestLines;