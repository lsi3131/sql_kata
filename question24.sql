-- https://school.programmers.co.kr/learn/courses/30/lessons/131529

select 
substring(product_code, 1, 2) as category, 
count(1) as products from product group by category