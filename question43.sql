-- https://school.programmers.co.kr/learn/courses/30/lessons/164668

select user_id, nickname, total_sales from
(select u.user_id, u.nickname, sum(b.price) total_sales
from used_goods_board b left join used_goods_user u on b.writer_id = u.user_id
where b.status = 'done'
group by b.writer_id) price_sub
where total_sales >= 700000
order by total_sales asc