declare

c_id employe.ssn%type;

c_name employe.name%type;

c_salary employe.salary%type;

c_deptno employe.deptno%type;

cursor c1

is select ssn,name,salary,deptno

from employe;


begin

open c1;

loop

fetch c1 into c_id,c_name,c_salary,c_deptno;

exit when c1%notfound;

insert into employee_detail values(c_id,c_name, c_salary,c_deptno);

end loop;

close c1;

dbms_output.put_line('succefully copied to new table');
end;
/

--Before execution create duplicate table employee_detail
--provided employe table also should be there
