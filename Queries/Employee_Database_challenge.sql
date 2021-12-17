--Deliverable 1--

select emp_no, first_name, last_name
into old_emps
from employees 
where birth_date between '1952-01-01' and '1955-12-31'

select old_emps.emp_no, old_emps.first_name, old_emps.last_name,
		titles.title, titles.from_date, titles.to_date
into retirement_emps
from old_emps
inner join titles
on old_emps.emp_no = titles.emp_no

select * 
into ret_titles
from retirement_emps
order by emp_no


SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO unique_titles
FROM retirement_emps
ORDER BY emp_no, to_date DESC;

select count(title), title
into retiring_titles
from unique_titles
group by title
order by count(title) desc;


--Deliverable 2--

select * 
into employees_ment
from employees
where birth_date between '1965-01-01' and '1965-12-31'


select em.emp_no,em.first_name,em.last_name, em.birth_date,
	ti.from_date, ti.to_date, ti.title
into mentorship_1
from employees_ment as em
inner join titles as ti
on em.emp_no = ti.emp_no
order by emp_no

select *
into m2
from mentorship_1
where to_date > '9000-01-01'

select distinct on(m2.emp_no) m2.emp_no,m2.first_name,m2.last_name,m2.birth_date,m2.from_date,m2.to_date,
	titles.title
into mentorship_eligibility
from m2
inner join titles
on m2.emp_no = titles.emp_no
order by emp_no, to_date desc;
