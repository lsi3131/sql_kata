-- https://school.programmers.co.kr/learn/courses/30/lessons/131535

select count(1) as users from user_info
where (age between 20 and 29) and date_format(date(joined), '%Y') = '2021'