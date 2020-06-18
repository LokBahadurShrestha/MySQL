use syntaxhrm_mysql;

select *  from hs_hr_employees;
-- displaying only first names from the employees table
select emp_firstname from  hs_hr_employees; 
select emp_firstname, emp_lastname from hs_hr_employees; 
SELECT employee_id FROM hs_hr_employees;
SELECT * FROM hs_hr_emp_dependents;
select emp_lastname from hs_hr_employees;
select job_title from ohrm_job_title;
select emp_firstname, emp_lastname,employee_id from hs_hr_employees;

select * from ohrm_language;
-- getting only first name and last name of 
select distinct emp_firstname from hs_hr_employees;
-- getting  all info of one person from DB
select *  from hs_hr_employees
where employee_id='13473';
-- getting all firstname and last name starting with john and last name Smith
select emp_firstname, emp_lastname from hs_hr_employees
where emp_firstname = 'John' and emp_lastname='Smith';








