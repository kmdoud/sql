alter procedure UpdateCustomers

	@id int,
	@name nvarchar(30),
	@city nvarchar(30),
	@state nchar(2)
as
Begin
	if @id is null Begin
		Print 'ID is required'
		return 1;
	End
	if @state not in ('OH', 'KY', 'IN') begin
	Print 'State must be OH, IN, KY';
	return 1;
	end
	update Customers set
	Name = @name,
	City = @city,
	State = @state
	where id = @id
If @@ROWCOUNT != 1 Begin
	Print 'Update Failed'
	return 2;
End
Print 'Update Succesful';
return 0;

end
go
exec UpdateCustomers 39, 'BOBS MARKET' , 'Akron', 'OH'
go