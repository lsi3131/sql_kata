-- https://school.programmers.co.kr/learn/courses/30/lessons/132203

-- hire_ymd should convert to date and date_format
select dr_name, dr_id, mcdp_cd, date_format(date(hire_ymd), '%Y-%m-%d') from doctor
where mcdp_cd in ('CS', 'GS')
order by hire_ymd desc, dr_name asc 