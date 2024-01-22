-- https://school.programmers.co.kr/learn/courses/30/lessons/131117

select product_id, product_name, total_sales from
(select p.product_id, p.product_name, sum(p.price * o.amount) total_sales
from food_order o left join food_product p on o.product_id = p.product_id
where date_format(o.produce_date, '%Y%m') = '202205'
group by p.product_id) sub
order by total_sales desc, product_id asc