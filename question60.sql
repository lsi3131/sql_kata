-- https://school.programmers.co.kr/learn/courses/30/lessons/131532

select year, convert(month, signed) month, gender, count(distinct user_id) users from (
select date_format(s.sales_date, '%Y') year, 
date_format(s.sales_date, '%m') month,
u.gender,
s.user_id
from online_sale s 
left join user_info u on s.user_id = u.user_id
where u.gender is not null
) sub
group by year, month, gender
order by year, month, gender asc