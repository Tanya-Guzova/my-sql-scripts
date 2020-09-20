set @studentsat = 1000;

select *
from major
where MinSAT <= @studentsat;


