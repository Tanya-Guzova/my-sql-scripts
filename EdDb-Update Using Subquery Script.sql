-- Update Greg Gould so his major is accounting

UPDATE Student SET
MajorId = (select id 
from Major
where Description = 'Accounting')
where id = 110;

select * 
from Student
where Id = 110