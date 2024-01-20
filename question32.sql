-- https://school.programmers.co.kr/learn/courses/30/lessons/144855

select b.category, sum(a.sales) total_sales
from book b left join book_sales a on a.book_id = b.book_id 
where date_format(sales_date, '%Y%m') = '202201'
group by b.category
order by b.category asc