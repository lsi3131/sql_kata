-- https://school.programmers.co.kr/learn/courses/30/lessons/59414

select animal_id, name, date_format(date(datetime), '%Y-%m-%d') as date from animal_ins
order by animal_id asc