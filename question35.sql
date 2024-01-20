-- https://school.programmers.co.kr/learn/courses/30/lessons/59411

-- 입양시간 - 보호 시작 시간 = 보호 기간
select animal_id, name from
(select ins.animal_id, ins.name, 
ins.datetime as ins_datetime, outs.datetime as outs_datetime,
outs.datetime - ins.datetime as duration
from animal_outs outs left join animal_ins ins
on outs.animal_id = ins.animal_id
order by ins.datetime asc) sub
order by duration desc
limit 2