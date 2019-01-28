alter procedure helloworld
as
Begin
 
Print 'Hello, World! from the .Net boot camp sql server topic';
select 'This is from the select';

declare @counter int;
set @counter = 88;
select @counter;
declare @message nvarchar(80) = 'This is the message text';
print @message;
End
go
exec helloworld;
go