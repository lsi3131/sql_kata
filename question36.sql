-- https://school.programmers.co.kr/learn/courses/30/lessons/59045#fn1

select ins.animal_id, ins.animal_type, ins.name
from animal_outs outs left join animal_ins ins
on outs.animal_id = ins.animal_id
where ins.sex_upon_intake like '%Intact%' and 
(outs.sex_upon_outcome like '%Spayed%' or outs.sex_upon_outcome like '%Neutered%')
order by ins.animal_id
