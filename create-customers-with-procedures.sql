create procedure InsertCustomer
	@name nvarchar(30),
	@city nvarchar(30),
	@state nchar(2)

as
begin
	If @state not in ('OH', 'IN', 'KY')
		Begin
			Print 'State must be OH, IN, KY'
			return 1;
		End
	Insert into Customers(
		Name, City, State, Sales)
	Values
		(@name, @city, @state, 0)
	if @@ROWCOUNT !=1
		Begin
		Print 'The insert failed'
		return 2;
		End
	Print 'Insert Succesful';
	return 0;
end
go
exec insertcustomer 'ACME', 'Gary', 'IN'
go