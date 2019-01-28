alter procedure evenlydivisablebythirteen
	@thenumber int 
as
if @thenumber % 13 = 0 
	begin 
	print 'HURRAY!';
	end
else 
	begin
	Print 'I am terribly sorry, this number is not divisable by 13 :('
	return 1;
	end
go
exec evenlydivisablebythirteen 12;
go