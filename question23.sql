-- https://school.programmers.co.kr/learn/courses/30/lessons/59409

select animal_id, name, 
case
when sex_upon_intake like 'Neutered%' or sex_upon_intake like 'Spayed%' then 'O'
else 'X'
end as neutered
from animal_ins