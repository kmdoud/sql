drop table if exists students;
go
drop table if exists majors;
go
create table majors(
id int not null primary key identity(1,1),
description nvarchar(50) not null);
go
create table students (

id int not null primary key identity (1,1),
firstname nvarchar(30) not null unique,
favedate datetime,
lovesgameofthrones bit not null default 1,
rategameofthrones decimal(3,1) not null default 5.0
check (rategameofthrones >= 0 and rategameofthrones <=10),
	majorsid int foreign key references majors(id));
go
insert into majors (description) values ('math');
insert into majors (description) values ('science');
insert into majors (description) values ('education');
insert into majors (description) values ('management');
insert into majors (description) values ('CS');


insert into students (Firstname, FaveDate, majorsid)
values
('nick', '1985-10-28', 3)

insert into students (Firstname, FaveDate)
values
('rick', '2000-2-12')

insert into students (firstname, favedate, lovesgameofthrones, rategameofthrones, majorsid)
values
('johnny' ,'1985-5-23', 1, 6.7, 2)




select * from students

