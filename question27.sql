-- https://school.programmers.co.kr/learn/courses/30/lessons/132202

select mcdp_cd as '진료과코드', count(1) as '5월예약건수' from appointment 
where date_format(apnt_ymd, '%Y%m') = '202205'
group by mcdp_cd
order by count(1) asc, mcdp_cd asc