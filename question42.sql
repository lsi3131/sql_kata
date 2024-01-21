-- https://school.programmers.co.kr/learn/courses/30/lessons/151136

select round(avg(daily_fee), 0) average_fee from
(select car_type, daily_fee
from CAR_RENTAL_COMPANY_CAR
where car_type = 'suv') sedan
group by car_type