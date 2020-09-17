set @lowsat = 1100;
set @highsat = 1200;

select *
from student
where sat >= @lowsat and sat <= @highsat
order by sat desc;