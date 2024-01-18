-- https://school.programmers.co.kr/learn/courses/30/lessons/59410

select animal_type, if(name is null, 'No name', name) as name_without_null, sex_upon_intake from animal_ins 
order by animal_id