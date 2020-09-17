select Lastname, 'A' as ABC
from student
where SAT > 1200
union 
select Lastname, 'B' as ABC
from student
where SAT <= 1200 and SAT > 1000
union
select Lastname, 'C' as ABC
from student
where SAT <= 1000

