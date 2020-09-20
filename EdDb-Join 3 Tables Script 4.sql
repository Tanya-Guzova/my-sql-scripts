select *
from student s
join studentclassrel scr
on scr.StudentId = s.ID
join Class c
on c.Id = scr.ClassId
-- there will be no results but you will see the columns from 3 tables being added