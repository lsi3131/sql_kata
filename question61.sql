-- https://school.programmers.co.kr/learn/courses/30/lessons/131118

select r.rest_id, i.rest_name, i.food_type, i.favorites, i.address, round(avg(r.review_score), 2) score
from rest_review r left join rest_info i on r.rest_id = i.rest_id
where substr(address, 1, 2) = '서울'
group by r.rest_id
order by avg(r.review_score) desc