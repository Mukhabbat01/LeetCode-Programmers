select p.product_name, sum(o.unit) as unit
from orders o
left join products p on p.product_id = o.product_id
where date_format(o.order_date, '%Y-%m') = '2020-02' 
group by o.product_id
having unit >= 100;

#List the Products Ordered in a Period - LeetCode sql 문제
