-- Brandon Coleman
-- Homework 9 queries
-- Data Analytics Bootcamp
-- 6/20/2019

--List the following details of each employee: employee number, last name, first name, gender, and salary.---

SELECT E.emp_no, E.last_name, E.first_name, E.gender, S.salary
FROM employee E
INNER JOIN salary S
ON e.emp_no = s.emp_no;

--List employees who were hired in 1986.

SELECT * FROM employee E
WHERE EXTRACT(YEAR FROM e.hire_date) = '1986';

--List the manager of each department with the following information: department number, department name, 
--the manager's employee number, last name, first name, and start and end employment dates.

SELECT D.dept_no, D.dept_name, M.emp_no, E.last_name, E.first_name, M.from_date, M.to_date
FROM department D
JOIN dept_manager M ON
M.dept_no = D.dept_no
JOIN employee E ON
E.emp_no = M.emp_no;

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

SELECT E.emp_no, E.last_name, E.first_name, D.dept_name
FROM department D
JOIN dept_employee F ON
F.dept_no = D.dept_no
JOIN employee E ON
E.emp_no = F.emp_no;

--List all employees whose first name is "Hercules" and last names begin with "B."
SELECT * from employee
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--List all employees in the Sales department, including their employee number,
--last name, first name, and department name.
SELECT E.emp_no, E.last_name, E.first_name, D.dept_name
FROM employee E
JOIN dept_employee F ON
E.emp_no = F.emp_no
JOIN department D ON
F.dept_no = D.dept_no
WHERE D.dept_name = 'Sales';

--List all employees in the Sales and Development departments, including their employee number, 
--last name, first name, and department name.
SELECT E.emp_no, E.last_name, E.first_name, D.dept_name
FROM employee E
JOIN dept_employee F ON
E.emp_no = F.emp_no
JOIN department D ON
F.dept_no = D.dept_no
WHERE D.dept_name LIKE 'Sales'
OR D.dept_name LIKE 'Development';

--In descending order, list the frequency count of employee last names, i.e., 
--how many employees share each last name.

SELECT last_name, COUNT(*) as frequency
FROM employee
GROUP BY last_name
ORDER BY frequency DESC;

