SELECT d.dept_id, d.dept_name_en, ROUND(AVG(sal), 0) AS avg_sal
FROM hr_department d
RIGHT JOIN hr_employees e ON e.dept_id = d.dept_id
GROUP BY d.dept_id 
ORDER BY avg_sal DESC;

#Programmers group by 부서별 평균 연봉 조회하기 문제 풀이
