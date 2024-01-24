-- https://school.programmers.co.kr/learn/courses/30/lessons/151138

-- 220901 대출 -> 220901 반납은 1일 대여이다. 
-- datediff가 0인 경우 1일 대여이므로, 29인 경우 30일 대여 대여이다.
-- 따라서 datediff(end_date, start_date) + 1 >= 30 인 경우로 조건식을 진행한다.

SELECT 
history_id, car_id,
date_format(start_date, '%Y-%m-%d') start_date,
date_format(end_date, '%Y-%m-%d') end_date,
if(datediff(end_date, start_date) + 1 >= 30, '장기 대여', '단기 대여') rent_type
from car_rental_company_rental_history 
where date_format(start_date, '%Y%m') = '202209'
order by history_id desc