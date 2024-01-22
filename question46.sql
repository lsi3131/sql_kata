-- https://school.programmers.co.kr/learn/courses/30/lessons/157341

select car.car_id from car_rental_company_rental_history his left join
car_rental_company_car car on his.car_id = car.car_id
where car.car_type = '세단' and 
date_format(his.start_date, '%m%d') between '1001' and '1031'
group by car.car_id
order by car.car_id desc