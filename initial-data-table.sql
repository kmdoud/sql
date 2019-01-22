use master;
go
drop database if exists SalesDb;
go
create database SalesDb;
go
use SalesDb;
go
create table Customers (
	Id int primary key identity(1,1),
	Name nvarchar(30) not null,
	City nvarchar(30) not null,
	State nchar(2) not null,
	Sales decimal(9,2) not null default 0,
	Active bit not null default 1
);
go
create table Orders (
	Id int primary key identity(1,1),
	CustomerId int foreign key references Customers(Id),
	Date DateTime not null default getdate(),
	Description nvarchar(80),
);
go
create table OrderLines (
	Id int primary key identity(1,1),
	OrdersId int not null foreign key references Orders(Id),
	Product nvarchar(30) not null,
	Description nvarchar(80),
	Quantity int not null default 1,
	Price decimal(9,2) not null default 10,
);
go
Insert into Customers (Name, City, State, Sales, Active) values ('Kroger', 'Cincinnati', 'OH', 97230, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Macy''s', 'Cincinnati', 'OH', 34762, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Convergys', 'Cincinnati', 'OH', 70887, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('P&G', 'Cincinnati', 'OH', 37179, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Mitsubishi Automotive', 'Cincinnati', 'OH', 16175, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Ford', 'Cincinnati', 'OH', 89300, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Cincinnati Financial', 'Cincinnati', 'OH', 81688, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Fifth Third Bank', 'Cincinnati', 'OH', 35074, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Citigroup', 'Cincinnati', 'OH', 24546, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Huntington', 'Cincinnati', 'OH', 5974, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('PNC Bank', 'Cincinnati', 'OH', 36307, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('US Bank', 'Cincinnati', 'OH', 15880, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('LyondellBasell', 'Cincinnati', 'OH', 63383, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Rohm and Haas', 'Cincinnati', 'OH', 47756, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Cintas', 'Cincinnati', 'OH', 7707, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Cleveland Clinic', 'Cleveland', 'OH', 78038, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Progressive', 'Cleveland', 'OH', 91395, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('KeyCorp', 'Cleveland', 'OH', 64434, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Case Western Reserve', 'Cleveland', 'OH', 89528, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Giant Eagle', 'Cleveland', 'OH', 16297, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Eaton Corp', 'Cleveland', 'OH', 90828, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Swagelok', 'Cleveland', 'OH', 23579, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Sherwin-Williams', 'Cleveland', 'OH', 67370, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Lincoln Electric', 'Cleveland', 'OH', 19778, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Nestle USA', 'Cleveland', 'OH', 51223, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('JP Morgan Chase', 'Columbus', 'OH', 50892, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Nationwide', 'Columbus', 'OH', 94452, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Honda America', 'Columbus', 'OH', 72730, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('L Brands', 'Columbus', 'OH', 30834, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Cardinal Health', 'Columbus', 'OH', 83620, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('American Electric Power', 'Columbus', 'OH', 71096, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Verizon', 'Columbus', 'OH', 77086, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Whirlpool', 'Columbus', 'OH', 84494, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Abercrombie Fitch', 'Columbus', 'OH', 92311, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Spectrum', 'Columbus', 'OH', 79482, 1);
go



Collapse 