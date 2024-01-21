-- https://school.programmers.co.kr/learn/courses/30/lessons/133026

select i.ingredient_type, sum(f.total_order) as total_order from 
first_half f left join icecream_info i on f.flavor = i.flavor
group by i.ingredient_type
order by sum(f.total_order) asc