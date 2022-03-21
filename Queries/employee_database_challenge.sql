DELIVERABLE 1
SELECT e.emp_no,
		e.first_name,
		e.last_name,
		t.title,
		t.from_date,
		t.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS t
ON e.emp_no = t.emp_no
where (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no ;
Drop table retirement_titles
SELECT * FROM retirement_titles;

--Use distinct with orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no)emp_no,
		first_name,
		last_name,
		title
INTO unique_titles
FROM retirement_titles
WHERE to_date = ('9999-01-01')
ORDER BY emp_no, to_date DESC;
drop table unique_titles
SELECT * FROM unique_titles;

Select * from titles 
WHERE to_date = ('9999-01-01')

--Employee count by department number
SELECT distinct title FROM unique_titles;

Select count(emp_no),title 
INTO retiring_titles
FROM unique_titles 
group by title 
Order by count DESC;
Select * from retiring_titles

 --Deliverable 2
SELECT emp_no,
		first_name,
		last_name,
		birth_date
	FROM employees;
	
Select from_date, to_date from dept_emp;

SELECT from title from titles;

Select DISTINCT ON (E.EMP_NO)e.emp_no,
		e.first_name,
		last_name,
		birth_date,
		de.to_date,
		de.from_date,
		t.title
INTO mentorship_eligibility 
FROM employees AS e 
Join dept_emp AS de
ON (e.emp_no = de.emp_no)
JOIN titles as t 
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;
SELECT * FROM mentorship_eligibility
DROP TABLE mentorship_eligibility

--creating unique TABLE 
SELECT DISTINCT e.emp_no,
				e.first_name
				e.last_name
				t.title,
				t.from_date 
				t.to_date
				sl.salary,
				de.dept_no,
				d.dept_name 
INTO unique_table 
FROM employees AS e
INNER JOIN titles AS t
ON e.emp_no = t.emp_no
INNER JOIN salaries as sl
ON e.emp_no = sl.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01'and '1955-12-31' AND t.to_date = '9999-01-01')
ORDER BY e.emp_no;

--Finding out how many employees are retiring
SELECT dept_name, title, COUNT(*)
FROM unique_table 
GROUP BY dept_name, title 
ORDER by dept_name, title;

--Average salary 
SELECT dept_name,title,COUNT(*),round(avg(salary),2)
FROM unique_table
GROUP BY dept_name, title 
ORDER BY dept_name, title;









