alter procedure customerswithsalesgtvalue
	@minsales decimal(9,2)
as 
begin
	select * from customers
	where sales > @minsales
	order by sales desc;
end
go

exec customerswithsalesgtvalue 60000;
go