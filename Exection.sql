
--Exceptions

DECLARE

V_NAME SCOTT.EMP.ENAME%TYPE;

BEGIN

SELECT ENAME INTO V_NAME
FROM SCOTT.EMP
WHERE EMPNO = 1;

EXCEPTION

WHEN NO_DATA_FOUND THEN
DBMS_OUTPUT.PUT_LINE('for this empid there is no data found in this table ');

WHEN OTHERS THEN
dbms_output.put_line('SQLCODE: '|| SQLCODE);
dbms_output.put_line('SQLERRM: '|| SQLERRM);

END;


Set serveroutput on;
DECLARE
  V_Total_Qty   NUMBER := 100;
  V_Count_Of_Person  NUMBER := 0;
 V_Per_distrib_Qty      NUMBER;

BEGIN
 
  V_Per_distrib_Qty := V_Total_Qty / V_Count_Of_Person; 

EXCEPTION

WHEN ZERO_DIVIDE THEN
DBMS_OUTPUT.PUT_LINE('Per person distributed quantity is zero ');

WHEN OTHERS THEN
dbms_output.put_line('SQLCODE: '|| SQLCODE);
dbms_output.put_line('SQLERRM: '|| SQLERRM);

END;



set SERVEROUTPUT on;
declare a number(2);
b number(2);
c number(3);
one_divide exception;
begin
a:=&a;
b:=&b;
if b=1 then 
raise one_divide;
end if;
c:=a/b;
dbms_output.put_line(c);
exception 
when zero_divide then
dbms_output.put_line('zero Divide');
when one_divide then
dbms_output.put_line('one_divide');
when others  then
dbms_output.put_line('Sqlerrm');
end;