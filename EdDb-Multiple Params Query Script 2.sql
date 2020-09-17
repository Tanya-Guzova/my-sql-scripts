set @mingpa = 2.10;
set @maxgpa = 3.70;

select *
from student
where gpa >= @mingpa and gpa <= @maxgpa
order by gpa asc;

select *
from student