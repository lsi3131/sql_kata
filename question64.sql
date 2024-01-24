-- https://school.programmers.co.kr/learn/courses/30/lessons/77487

with sub as
(
	select count(1) as register_count, host_id from places
    group by host_id
)

select id, name, host_id from places 
where host_id in (select host_id from sub where register_count >= 2)
order by id asc