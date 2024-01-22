-- https://school.programmers.co.kr/learn/courses/30/lessons/132204

select a.apnt_no, p.pt_name, p.pt_no, d.mcdp_cd, d.dr_name, a.apnt_ymd
from appointment a 
left join patient p on a.pt_no = p.pt_no
left join doctor d on a.mddr_id = d.dr_id 
where a.apnt_cncl_yn = 'N' and date_format(a.apnt_ymd, '%Y%m%d') = '20220413' and d.mcdp_cd = 'CS' 
order by a.apnt_ymd asc