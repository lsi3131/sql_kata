-- https://school.programmers.co.kr/learn/courses/30/lessons/59044

-- 입양을 못갔다는 것은 animal_ins에 join한 animal_outs의 data 값이 없다는 의미
select a.name, a.datetime in_datetime
from animal_ins a left join animal_outs b on a.animal_id = b.animal_id
where b.datetime is null
order by a.datetime asc
limit 3