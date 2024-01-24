-- https://school.programmers.co.kr/learn/courses/30/lessons/157342

with sub as(
SELECT car_id, avg(datediff(end_date, start_date) + 1) average_duration,
end_date, start_date
from car_rental_company_rental_history
group by car_id
order by car_id
)
    
select car_id, round(average_duration, 1) average_duration 
from sub
where average_duration >= 7.0
order by average_duration desc, car_id desc