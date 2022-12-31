--Functions


create or replace function calc(
a number,b number, c char)
return number
is 
begin
if c='+' then 
return(a+b);
elsif c='-' then
return(a-b); 
elsif c='*' then
return(a*b);
else 
return(a/b);
end if;
end;


select calc(10,20,'+') from dual;
SELECT calc(15,25,'*') from dual; 

