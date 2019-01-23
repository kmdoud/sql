select * 
from job j
join Employee e
on j.id = e.JobId
where j.Salary >= 100000

