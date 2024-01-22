-- https://school.programmers.co.kr/learn/courses/30/lessons/164670

select user_id, nickname, addr as "전체주소", tlno_text as "전화번호" from
(select u.user_id, u.nickname, 
concat(u.city, ' ', u.street_address1, ' ', u.street_address2) addr,
concat(substr(u.tlno, 1, 3),'-',substr(u.tlno, 4, 4),'-',substr(u.tlno, 8, 4)) tlno_text,
count(1) as order_count
from used_goods_board b left join used_goods_user u on b.writer_id = u.user_id
group by u.user_id) sub
where order_count >= 3
order by user_id desc