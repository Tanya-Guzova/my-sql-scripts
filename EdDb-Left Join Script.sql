-- selecting all the columns from class table and only Lastname column from instructor table 
select c.*, i.Lastname as Instructor
from class c 
left join instructor i on c.InstructorId = i.Id 
