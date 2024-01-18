-- https://school.programmers.co.kr/learn/courses/30/lessons/131114

select warehouse_id, warehouse_name, address, 
if(freezer_yn is null, 'N', freezer_yn) freezer_yn
from food_warehouse 
where substring(warehouse_name, 4, 2) like '%경기%'
order by warehouse_id asc