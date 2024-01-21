-- https://school.programmers.co.kr/learn/courses/30/lessons/144853

select book_id, date_format(published_date,'%Y-%m-%d') 
from book 
where date_format(published_date, '%Y') = '2021' and category = '인문'
order by published_date asc