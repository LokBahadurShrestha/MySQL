use syntaxhrm_mysql;
-- How to display information about employees who do not have assign job titles?
select * from hs_hr_employees
where job_title_code is null;
-- How to find employees first name, last name that do not have home phone number and display first names in alphabetical order.
select emp_firstname,emp_lastname
from hs_hr_employees
where emp_hm_telephone is null
order by emp_firstname asc;
-- How to display about all employees whose DOB has been entered. We want to see employees sorted by last name from Z-A?
select * from hs_hr_employees
where emp_birthday is not null
order by emp_lastname desc;

