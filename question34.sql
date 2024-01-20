-- https://school.programmers.co.kr/learn/courses/30/lessons/59043

select ins.animal_id, ins.name
from animal_outs outs left join animal_ins ins
on outs.animal_id = ins.animal_id
where ins.datetime > outs.datetime
order by ins.datetime asc