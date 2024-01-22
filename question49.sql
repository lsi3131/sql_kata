-- https://school.programmers.co.kr/learn/courses/30/lessons/131116

select category, price as max_price, product_name from 
(select category, product_name, price,
rank() over (partition by category order by price desc) rn
from food_product) sub
where rn = 1 and category in ('과자', '국', '김치', '식용유')
order by max_price desc