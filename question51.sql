-- https://school.programmers.co.kr/learn/courses/30/lessons/59042

select outs.animal_id, outs.name from animal_outs outs 
left join animal_ins ins on ins.animal_id = outs.animal_id
where ins.animal_id is null