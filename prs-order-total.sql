select r.description, r.status, CONCAT(u.firstname, ' ', u.lastname) as 'Full Name',
v.name, p.name, rl.quantity, p.price, rl.quantity * p.price as 'Line Total'
from requests r
join users u 
	on r.userid = u.id
join requestlines rl
on r.id = rl.requestsid
join products p 
on rl.productsid = p.id
join vendors v
on p.vendorid = v.id
where r.Description = 'sweater request'