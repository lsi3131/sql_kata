-- https://school.programmers.co.kr/learn/courses/30/lessons/144854

select b.book_id, a.author_name, date_format(b.published_date, '%Y-%m-%d')
from book b left join author a on b.author_id = a.author_id
where b.category = '경제' 
order by b.published_date asc