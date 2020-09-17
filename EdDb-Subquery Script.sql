select *
from student
where gpa > (select avg (gpa) from student);