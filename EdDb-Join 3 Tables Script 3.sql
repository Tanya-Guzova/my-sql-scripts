-- Display all the Majors and the Classes that are required. The MajorCLassrel table is needed.
select *
from Major m
join majorclassrel mcr
on mcr.MajorId = m.Id
join class c
on c.Id = mcr.ClassId
 