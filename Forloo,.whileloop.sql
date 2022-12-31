-- For loop with
DECLARE
  i NUMBER := 15;
 
BEGIN

  FOR i IN 1..10 LOOP
    DBMS_OUTPUT.PUT_LINE ('Inside loop, i is ' || TO_CHAR(i));
  END LOOP;
 
  DBMS_OUTPUT.PUT_LINE ('Outside loop, i is ' || TO_CHAR(i));
 
END;


DECLARE   
VAR1 NUMBER;  
BEGIN   
VAR1:=10;  
FOR VAR2 IN 1..10  
LOOP  
DBMS_OUTPUT.PUT_LINE (VAR1*VAR2);  
END LOOP;  
END; 

--forloop with cursor

DECLARE

  CURSOR C1 is  
  SELECT * FROM banktable;
 
BEGIN
 
  FOR i IN C1 LOOP
    dbms_output.put_line ( I.NAME);
  END LOOP;

END;



--While

DECLARE  
i INTEGER := 1;  
BEGIN  
WHILE i <= 10 LOOP  
DBMS_OUTPUT.PUT_LINE(i);  
i := i+1;  
END LOOP;  
END;  


DECLARE   
VAR1 NUMBER;  
VAR2 NUMBER;  
BEGIN   
VAR1:=200;  
VAR2:=1;  
WHILE (VAR2<=10)  
LOOP  
DBMS_OUTPUT.PUT_LINE (VAR1*VAR2);  
VAR2:=VAR2+1;  
END LOOP;  
END;  