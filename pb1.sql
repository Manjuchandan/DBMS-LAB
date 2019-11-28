begin

for rec in (select * from branch)

loop

dbms_output.put_line('CODE :'|| rec.code || 'NAME : ' || rec.name ||'Assets :'|| rec.assets);

end loop;

for rec in (select * from customer)

loop

dbms_output.put_line('SSN :'|| rec.ssn || 'NAME : ' || rec.name ||'Place :'|| rec.place);

end loop;


for rec in (select * from account)

loop

dbms_output.put_line('ACNO :'|| rec.acno || 'SSN : ' || rec.ssn ||'CODE :'|| rec.code || 'Balance:' || rec.balance);

end loop;

update account
set balance=12000
where ssn=1;
dbms_output.put_line('Some rows are updated');

end;
/


