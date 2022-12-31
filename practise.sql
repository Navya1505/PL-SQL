
set serveroutput on;
DECLARE  
   a number(3) := 500;  
BEGIN  
     
   IF( a < 20 ) THEN  
    
      dbms_output.put_line('a is less than 20 ' );  
   ELSE  
      dbms_output.put_line('a is not less than 20 ' );  
   END IF;  
   dbms_output.put_line('value of a is : ' || a);  
END;  




DECLARE
   result CHAR(20) := 'second';
BEGIN
   IF ( result = 'distinction' ) THEN
      DBMS_OUTPUT.PUT_LINE('First Class with Distinction');   
   ELSIF ( result = 'first' ) THEN
      DBMS_OUTPUT.PUT_LINE('First Class');  
   ELSIF ( result = 'second' ) THEN
      DBMS_OUTPUT.PUT_LINE('Second Class');  
   ELSIF ( result = 'third' ) THEN
      DBMS_OUTPUT.PUT_LINE('Third Class');        
   ELSE
      DBMS_OUTPUT.PUT_LINE('Fail');
   END IF;
END;
/