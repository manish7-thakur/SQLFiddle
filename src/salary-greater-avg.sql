create table salaries(id integer, emp_no integer, salary integer);
insert into salaries values(1, 23, 2200);
insert into salaries values(2, 25, 2100);
insert into salaries values(3, 29, 2530);
insert into salaries values(4, 31, 2000);
insert into salaries values(5, 53, 3000);
insert into salaries values(6, 12, 3000);
-- select top 3 employees with emp_no above 28 having salaries greater than average of min & max salaries ordered by emp_no & salary
-- emp_no	salary
--   29	    2530
--   53	    3000

select emp_no, salary from salaries where salary > (SELECT ((min(salary) + max(salary))/2) from salaries) and emp_no > 28 order by emp_no, salary limit 3