-- https://docs.google.com/spreadsheets/d/1TRBYs9WXz61xoW3ACeklombx8KZqaTekqwuCS5eyiIU/edit#gid=832106203

select p.product_code, sum(p.price * o.sales_amount) sum_amount 
from offline_sale o 
left join product p on o.product_id = p.product_id
group by p.product_code
order by sum_amount desc, product_code asc