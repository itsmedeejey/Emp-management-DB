-- ans a
select e.f_name, e.l_name , e.address from 
employee e
join department d on e.dept_number = d.dept_number
where d.dept_name='Finance';

-- ans b 
select e.f_name , e.l_name  from 
employee e 
join department d on d.dept_number = d.dept_number
join project p on p.dept_number = d.dept_number
where p.dept_number = 6;


-- ans c
select e.f_name, e.l_name, d.dept_name from 
employee e
join department d on e.emp_no = d.manager_no
where e.emp_no = d.manager_no;

-- ans d
select l.dept_location from 
locations l
join department d on d.dept_number = l.dept_number
where d.dept_name = "Administration";

-- ans e 
select p.p_number, d.dept_name, e.f_name, e.l_name,
e.address from
project p 
join department d on d.dept_number = p.dept_number
join employee e on e.emp_no = d.manager_no
where p.p_location = "Mumbai";

-- ans f 
SELECT d.dept_name, COUNT(*) AS number_of_emp
FROM employee e
JOIN department d ON e.dept_number = d.dept_number
GROUP BY d.dept_name;

-- ans g
select d.dept_name, avg(e.salary),max(e.salary),min(e.salary),sum(e.salary) from
employee e
join department d on d.dept_number = e.dept_number
where d.dept_name = "Research";

-- ans h 
select e.f_name, e.l_name from
employee e
where not exists(
select 1 from dependent d where e.emp_no = d.emp_no
);

-- ans i 
alter table employee DROP column b_data;

-- ans j
SELECT e.f_name, e.l_name 
FROM employee e 
WHERE e.salary > (SELECT AVG(salary) FROM employee);

-- ans k 
select d.dept_number, count(*) as number_of_emp, 
avg(e.salary)
from department d
join employee e on e.dept_number = d.dept_number
group by d.dept_number;

-- ans l 
SELECT e.f_name, e.l_name 
FROM employee e
JOIN dependent d ON e.emp_no = d.emp_no
GROUP BY e.emp_no, e.f_name, e.l_name
HAVING COUNT(d.emp_no) >= 2;

-- ans m
select e.* from
employee e 
 join department d on e.dept_number = d.dept_number
 join project p on d.dept_number = p.dept_number
where p.dept_number = 1  and 2 and 3;
