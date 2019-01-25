create table students (

Id int not null primary key identity(1,1),
Firstname nvarchar(30) not null unique,
FaveDate datetime,
LovesGameOfThrones bit not null default 0,
RateGameOfThrones decimal (3,1) not null default 5.0 
check(RateGameOfThrones <= 10.0 and RateGameOfThrones >= 0),

);

insert into students (
Firstname, FaveDate,RateGameOfThrones)
values
('ken', 2019-5-11, 0) 

select * from students