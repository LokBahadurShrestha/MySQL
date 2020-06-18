use syntaxhrm_mysql;
select * from syntaxhrm_mysql.hs_hr_employees;
-- display all info of  employee first name John and last name is doe/AND operator
select * from hs_hr_employees
where emp_firstname='John' and emp_lastname='Doe'; -- true and true=true
-- display all info of  employees whose emp_ids are 13288 13290 13290 /true or false =true /OR operator
select * from hs_hr_employees
where employee_id='13288' or employee_id='13290' or employee_id='13290';
-- logical operator IN/replacement for OR
select * from hs_hr_employees
where employee_id in (13288, 13290,13290);
--
select * from hs_hr_employees
where emp_firstname in('Yunus','John') and emp_lastname in('Yakut','Doe');

-- display all  the info job titles except bakery chef/ NOT operator
select * from ohrm_job_title
where  not job_title ='Bakert chef';
-- display employees first and last name who has employees ids from 11123 until 13288/BETWEEN operator
select emp_firstname, emp_lastname, employee_id
from hs_hr_employees
where employee_id between 11123 and 13288
order by employee_id asc;
--   display first name which starts with an /LIKE operator/wild card 'an%'
select emp_firstname from hs_hr_employees
where emp_firstname like 'an%';
-- display first name ends with a '%a'
select emp_firstname from hs_hr_employees
where emp_firstname like '%a';
-- display first name ends with starts with j and ends with a '%a'
select emp_firstname from hs_hr_employees
where emp_firstname like 'j%a';
-- display first name ,last name and birthday for those employees who were born after 2000
select emp_firstname, emp_lastname,emp_birthday
from hs_hr_employees
where emp_birthday>'2000';
-- display all the nationalities which starts with a
select * from ohrm_nationality
where name like 'a%';
--  display all employees who are born on february presentce of single charecter/ _ operator
select emp_firstname, emp_lastname,emp_birthday
from hs_hr_employees
where emp_birthday like '____-02-__%';

