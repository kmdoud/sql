create procedure deletecustomers
@id int = -1
as
begin
	if @id = -1 begin
	Print 'ID must be entered'
	return 1;
	end
	--this checks for the existence of the row to be deleted
	if not exists (select 1 from customers where id =@id) begin
			Print 'Id does not exist';
		return 2;
	end
	delete from customers
		where id =@id
	if @@ROWCOUNT !=1 begin
	Print 'The delete failed'
	return 3;
	end
	Print 'Delete succesful'
	return 0;
end
go
exec deletecustomers 39
go