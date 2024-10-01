select e.emp_no, e.emp_name, 
   (case 
    when avg(score) >= 96 then 'S'
    when avg(score) >= 90 then 'A'
    when avg(score) >= 80 then 'B'
    else 'C' end) as grade, 
    (case
     when avg(score) >= 96 then e.sal * 0.20
     when avg(score) >= 90 then e.sal * 0.15
     when avg(score) >= 80 then e.sal * 0.10
     else 0 end) as bonus
from hr_employees e
left join hr_grade h on e.emp_no = h.emp_no
group by e.emp_no
order by e.emp_no asc;

#Programmers group by 문제 
