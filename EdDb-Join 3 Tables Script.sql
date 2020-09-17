select m.description, c.section, c.subject
from Major m
join majorclassrel mc
on mc.MajorId = m.ID
join class c
on c.Id = mc.ClassId
-- only showing classes for General Business Major
where m.description = 'General Business'
