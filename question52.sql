-- https://school.programmers.co.kr/learn/courses/30/lessons/133025

select half.flavor from first_half half left join icecream_info info on half.flavor = info.flavor
where half.total_order > 3000 and info.ingredient_type = 'fruit_based'
order by half.total_order desc