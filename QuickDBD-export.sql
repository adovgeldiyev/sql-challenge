-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

select e.emp_no, e.last_name, e.first_name, e.gender, s. salary
from employees e
join salaries s
on e.emp_no=s.emp_no;

select first_name, last_name, hire_date
from employees
where hire_date between '1986-01-01' and '1987-01-01';

select d.dept_no, d.dept_name, dept_manager.emp_no, e.last_name, e.first_name, dept_manager.from_date, dept_manager.to_date
from departments d
join dept_manager
on d.dept_no=dept_manager.dept_no
join employees e
on dept_manager.emp_no=e.emp_no;

select dept_emp.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp
join employees e
on dept_emp.emp_no=e.emp_no
join departments d
on dept_emp.dept_no=d.dept_no;

select * from employees e
where first_name = 'Hercules' and last_name like 'B%';

select dept_emp.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp
join employees e
on dept_emp.emp_no=e.emp_no
join departments d
on dept_emp.dept_no=d.dept_no
where d.dept_name = 'Sales';

select dept_emp.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp
join employees e
on dept_emp.emp_no=e.emp_no
join departments d
on dept_emp.dept_no=d.dept_no
where d.dept_name = 'Sales' or d.dept_name = 'Development';

select last_name,
count(last_name) as "freq"
from employees e
group by last_name
order by "freq" desc;
