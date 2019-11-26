
declare
  
  n1 number:='&n';
  n2 number;
  len number;
  i number;

begin 

	len:=length(n1);
	for i in reverse 1..len
	
	loop
	n2:=n2 || substr(n1,i,1);

	end loop;

 if n1=n2 then

  dbms_output.put_line('Palindrome');

else
     dbms_output.put_line('NOT Palindrome');

 end if;
end;
/
