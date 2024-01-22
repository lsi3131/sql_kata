-- https://school.programmers.co.kr/learn/courses/30/lessons/131123

select food_type, rest_id, rest_name, favorites from
(select food_type, rest_id, rest_name, favorites,
rank() over (partition by food_type order by favorites desc) rn
from rest_info) sub
where rn = 1
order by food_type desc