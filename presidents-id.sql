select *
from Job j
join Employee e 
on e.JobId = j.Id
where j.Description = 'president';
