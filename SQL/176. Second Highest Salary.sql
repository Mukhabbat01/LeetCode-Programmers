SELECT max(salary) as SecondHighestSalary
FROM employee
WHERE salary <> (SELECT max(salary) FROM employee);

#LeetCode 176. Second Highest Salary 문제 풀이
