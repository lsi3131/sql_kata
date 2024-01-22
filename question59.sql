-- https://school.programmers.co.kr/learn/courses/30/lessons/157340

/*
대여일(start_date) <= 22.10.16이고 반납일(end_date) >= 22.10.16인 레코드가 하나라도 있으면 해당 car_id는 대여중이다. 
이를 is_rental 컬럼을 추가하여 flag변수로 만든다. 22.10.16에 대여중이면 해당 레코드의 is_rental = 1, 아니면 is_rental = 0 이다.
쿼리 결과를 car_id로 group화한 후 max(is_rental)을 계산하면 car_id 별로 22.10.16에 대여중인 차 여부를 알 수 있다. 해당 결과가 1이면 '대여중', 0임ㄴ, '대여가능'으로 출력한다. 
*/

select car_id, if(is_rental = 1, '대여중', '대여 가능') availability from
(select car_id, max(is_rental) is_rental, start_date, end_date from
(select 
car_id,
if(date_format(start_date, '%Y%m%d') <= '20221016' and 
date_format(end_date, '%Y%m%d') >= '20221016', 1, 0) as is_rental
from car_rental_company_rental_history) sub
group by car_id
order by car_id desc) sub2