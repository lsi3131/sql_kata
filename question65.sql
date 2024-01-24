-- https://school.programmers.co.kr/learn/courses/30/lessons/62284

with 
milk as (select * from cart_products where name = 'Milk'),
yogurt as (select * from cart_products where name = 'Yogurt')

select milk_cart_id cart_id from (
select m.cart_id milk_cart_id, y.cart_id yogurt_cart_id 
from milk m left join yogurt y on m.cart_id = y.cart_id
union
select m.cart_id milk_cart_id, y.cart_id yogurt_cart_id
from milk m right join yogurt y on m.cart_id = y.cart_id
) sub
where milk_cart_id is not null and yogurt_cart_id is not null
order by milk_cart_i