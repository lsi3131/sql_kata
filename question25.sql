-- https://school.programmers.co.kr/learn/courses/30/lessons/59040

select animal_type, count(1) counts from animal_ins group by animal_type order by animal_type asc