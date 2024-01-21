-- https://school.programmers.co.kr/learn/courses/30/lessons/131120

select member_id, member_name, gender, date_format(date_of_birth, '%Y-%m-%d') date_of_birth
from member_profile
where date_format(date_of_birth, '%m%d') between '0301' and '0331'
and lower(gender) = 'w'
and tlno is not null
order by member_id asc
