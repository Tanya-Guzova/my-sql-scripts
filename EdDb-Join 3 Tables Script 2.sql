select *
from Student s
join studentclassrel sc
on s.Id = sc.StudentId
join class c
on sc.ClassId = c.Id
