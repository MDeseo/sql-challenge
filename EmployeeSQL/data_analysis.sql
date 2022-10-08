-- DATA ANALYSIS

-- 1. List the employee number, last name, first name, sex, and salary of each employee.

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no
LIMIT (5);

-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE employees.hire_date > '1985-12-31'::date AND employees.hire_date < '1987-1-1'::date
LIMIT (5);

-- 3. List the manager of each department along with their 
--    department number, department name, employee number, last name, and first name.

SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM dept_manager
JOIN employees 
ON dept_manager.emp_no = employees.emp_no
JOIN departments 
ON dept_manager.dept_no = departments.dept_no
LIMIT (5);

-- 4. List the department number for each employee along with that employee’s 
--    employee number, last name, first name, and department name.

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp   -- needs transition here from employees to dept_emp
ON employees.emp_no = dept_emp.emp_no
JOIN departments   -- needs transition here from dept_emp to deparments
ON dept_emp.dept_no = departments.dept_no
LIMIT (5);

-- 5. List first name, last name, and sex of each employee whose first name 
--    is Hercules and whose last name begins with the letter B.

SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
LIMIT (5);


-- 6. List each employee in the Sales department, including their employee number, last name, and first name.

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp   -- needs transition here from employees to dept_emp
ON employees.emp_no = dept_emp.emp_no
JOIN departments -- needs transition here from dept_emp to deparments
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales'
LIMIT (5);


-- 7. List each employee in the Sales and Development departments, 
--    including their employee number, last name, first name, and department name.

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp   -- needs transition her from employees to dept_emp to deparments
ON employees.emp_no = dept_emp.emp_no
JOIN departments 
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development'
LIMIT (5);


-- 8. List the frequency counts, in descending order, 
--    of all the employee last names (that is, how many employees share each last name).

SELECT employees.last_name, Count (*)
FROM employees
GROUP BY employees.last_name
ORDER BY Count (*) DESC;


