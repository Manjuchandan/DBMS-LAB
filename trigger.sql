create or replace trigger tri_employee

before insert or update

on employee_detail

for each row

declare 
 	rec varchar2(10);


begin

	select to_char(sysdate,'Dy') into rec from dual;
	if rec ='Thu' or rec='Tue' then  --for rec variable give the day of execution Ex: i am executing this on Tuesday so i gave rec='Tue'

       dbms_output.put_line(rec);

       raise_application_error(-20343,'Not Allowed to Enter');

       end if;

end;

/

show error

insert into employee_detail values(90,'ram',12000,12);

--Before execute create table employee_detail(ssn,name,salary,deptno)
