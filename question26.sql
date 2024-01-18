-- https://school.programmers.co.kr/learn/courses/30/lessons/59412

select hh as hour, count(1) as count from 
(select date_format(datetime, '%H') hh from animal_outs) sub
where hh >= '09' and hh < '20'
group by hh
order by hh asc