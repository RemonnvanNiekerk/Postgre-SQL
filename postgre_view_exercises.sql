/*
*  Create a view "90-95" that:
*  Shows me all the employees, hired between 1990 and 1995
*  Database: Employees
*/
CREATE VIEW "90-95" AS 
SELECT * 
FROM employees AS E 
WHERE EXTRACT (YEAR FROM E.hire_date ) BETWEEN 1990 AND 1995
ORDER BY emp_no;

/*
*  Create a view "bigbucks" that:
*  Shows me all employees that have ever had a salary over 80000
*  Database: Employees
*/
CREATE VIEW "bigbucks" AS
SELECT E.EMP_NO ,S.Salary 
FROM employees AS e 
JOIN salaries AS s USING (emp_no)
WHERE s.salary > 8000
ORDER BY s.sallary 