begin

update employe

set salary=case

	when deptno=5 then salary+(salary*0.15)
	else salary
        end

where deptno in (5);

dbms_output.put_line(to_char(sql%rowcount)||'rows affected');

end;
/
