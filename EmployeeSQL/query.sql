
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
from employees e
left join salary s
on e.emp_no=s.emp_no
order by e.emp_no;

select e.last_name, e.first_name, hire_date
from employees e
where EXTRACT(YEAR FROM hire_date)=1986
--where year(hire_date)=1986
order by hire_date, last_name, first_name
;

select dept_manager.dept_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
from dept_manager  
left join employees
ON  dept_manager.emp_no=employees.emp_no
left join departments
on dept_manager.dept_no=departments.dept_no
order by dept_no, emp_no
;

select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name 
from employees  
left join dept_emp
ON  dept_emp.emp_no=employees.emp_no
left join departments
on dept_emp.dept_no=departments.dept_no
;

select employees.last_name, employees.first_name, sex 
from employees 
where first_name='Hercules' and SUBSTRING(last_name, 1, 1)='B'
order by last_name;

select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name 
from employees  
left join dept_emp
ON  dept_emp.emp_no=employees.emp_no
left join departments
on dept_emp.dept_no=departments.dept_no
where dept_name='Sales'
;

select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name 
from employees  
left join dept_emp
ON  dept_emp.emp_no=employees.emp_no
left join departments
on dept_emp.dept_no=departments.dept_no
where dept_name='Sales' or dept_name='Development'
order by dept_name desc
;

select last_name, count(last_name) as "Count"
from employees
group by last_name
order by "Count" desc
;
