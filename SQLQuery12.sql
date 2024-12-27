p_rename EMPL1, Employee_Details;
select *from Employee_Details;

TRUNCATE table Employee_Details;


create login login1 With password ='1234';
create user new_user for login Login1;

grant select on employee_details to new_user;

