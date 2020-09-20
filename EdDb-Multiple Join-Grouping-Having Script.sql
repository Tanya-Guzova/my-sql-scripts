select m.Description as 'Major', count(*) as 'Count of Classes'
from Major m
join majorclassrel mcr
on mcr.MajorId = m.Id
join class c
on c.Id = mcr.ClassId
group by m.Description 
having count(*) > 10