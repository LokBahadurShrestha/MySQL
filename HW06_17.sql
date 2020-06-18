use syntaxhrm_mysql;
-- Display all employees whose last name ends with ‘a’.
select * from hs_hr_employees
where emp_lastname like '%a'
order by emp_lastname asc;
-- Display all HRMS offices except those located in US, Canada and Brazil.
select * from ohrm_location
where not country_code in ('US','CA','BR');
-- Verify all employees who was born from January 1st of 1980 until December 31st of 2000.
SELECT * FROM hs_hr_employees
WHERE emp_birthday BETWEEN '1980-01-01' AND '2000-12-31';
-- Display all nationalities that start with ‘C’?
SELECT * FROM ohrm_nationality
WHERE name LIKE 'C%';
-- Display all employees’ whose birthday is in August and do not forget to sort employee’s last name from A-Z.
SELECT * FROM hs_hr_employees
WHERE emp_birthday LIKE '%-08-%'
ORDER BY emp_lastname ASC;
-- Verify all the employees who are managers.
SELECT * FROM hs_hr_employees, ohrm_job_title
WHERE job_title LIKE '%manager%';
-- How to display first name, last name, dob of employees who is a Freelancer or developer.
SELECT emp_firstname, emp_lastname,emp_birthday,job_title FROM hs_hr_employees,ohrm_job_title
WHERE job_title IN ('Freelancer','Developer');
