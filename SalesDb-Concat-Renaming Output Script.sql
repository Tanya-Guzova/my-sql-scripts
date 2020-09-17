select s.id, concat(s.firstname, ' ', s.Lastname) as Name, s.GPA, m.Description as 'Major'
from student s
join major m on m.Id = s.MajorId