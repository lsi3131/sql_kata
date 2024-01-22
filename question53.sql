-- https://school.programmers.co.kr/learn/courses/30/lessons/131536

select user_id, product_id from
(
select user_id, product_id, count(1) count_of_buy 
from online_sale group by user_id, product_id
) sub
where count_of_buy >=2
order by user_id asc, product_id desc