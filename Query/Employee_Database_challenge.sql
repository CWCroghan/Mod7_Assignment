-- Find employees who will be eligible for retirement

SELECT e.emp_no, e.first_name, e.last_name,
t.title, t.from_date, t.to_date
INTO retirement_titles
FROM employees as e
left join titles as t
	on t.emp_no = e.emp_no
WHERE (birth_date Between '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no, t.to_date DESC;

select * from retirement_titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
INTO unique_titles
FROM retirement_titles
WHERE to_date = ('9999-01-01')
ORDER BY emp_no, to_date DESC;

select * from unique_titles;

-- Count the number of each title that are about to retire
select count(emp_no), title
into Retiring_titles
from unique_titles
group by title
order by count(emp_no) desc;

-- Mentorship Program

select distinct on (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date,
	d.from_date, d.to_date, t.title
into mentorship_eligibilty
from employees as e
	join dept_emp as d 
		on e.emp_no = d.emp_no
	join titles as t
		on e.emp_no = t.emp_no
where d.to_date = ('9999-01-01') and 
	(e.birth_date Between '1965-01-01' AND '1965-12-31')
order by e.emp_no, d.to_date desc;


--- Additional Queries
select distinct on (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date,
	d.from_date, d.to_date, t.title
from employees as e
	join dept_emp as d 
		on e.emp_no = d.emp_no
	join titles as t
		on e.emp_no = t.emp_no
where d.to_date = ('9999-01-01') and title = 'Senior Engineer' and
	(e.birth_date Between '1965-01-01' AND '1967-12-31')
order by e.emp_no, d.to_date desc;

select * from unique_titles;

select count(emp_no), title
from mentorship_eligibilty
group by title;


select count(emp_no)
from dept_emp
where to_date = ('9999-01-01');

select count(emp_no), title
from mentorship_eligibilty
group by title
order by count(emp_no) desc;

