-- Challenge Deliverable 1 - Employee_Database_challenge.sql
SELECT e.emp_no, e.first_name, e.last_name, ti.title, ti.from_date, ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti 
ON e.emp_no = ti.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;
-- successfully exported 1/29 5:58am
SELECT * from retirement_titles

SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;
-- succesfully exported 1/29 6:09am
SELECT * from unique_titles

SELECT count(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC
-- successfully exported 1/29 6:16am
SELECT * from retiring_titles

-- Challenge Deliverable 2 - Employee_Database_challenge.sql
SELECT DISTINCT ON (emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, ti.title
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de ON e.emp_no = de.emp_no
INNER JOIN titles AS ti ON e.emp_no = ti.emp_no 
WHERE de.to_date = '9999-01-01'
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no
-- successfully exported 1/29 6:35am
SELECT * from mentorship_eligibility