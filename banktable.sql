select * from banktable
insert into banktable values('Ramya','98765431101234','Bglre','5000101','bnglre','axis12345','9801234567');
insert into banktable values('kavya','97654311001235','mumbai','5000601','mumbai','axis9879','98787812350');


create table bankamount(
name varchar(20),
amount number(7))

insert into bankamount values('Navya','20000');
insert into bankamount values('kavya','24000');
insert into bankamount values('ravya','40000');
insert into bankamount values('bhavya','70000');


select * from bankamount


create or replace procedure SPBank(
p_Name in banktable.name%type,
p_AccountNo in banktable.Accountno%type,
p_Address in banktable.address%type,
p_pincode in banktable.pincode%type,
p_branch in banktable.branch%type,
p_IFSCCode in banktable.ifsccode%type,
p_Mobile in banktable.mobile%type
)
is
begin
INSERT INTO banktable(Name,Accountno,Address,pincode,branch,IFSCCode,Mobile) VALUES (p_name,p_Accountno,p_address,p_pincode,p_branch,p_IFSCCode,p_Mobile);
commit;
end;


create or replace procedure updateBank(
p_Name in banktable.name%type,
p_AccountNo in banktable.Accountno%type,
p_Address in banktable.address%type,
p_pincode in banktable.pincode%type,
p_branch in banktable.branch%type,
p_IFSCCode in banktable.ifsccode%type,
p_Mobile in banktable.mobile%type
)
is 
begin
update into banktable(Name=p_name,Accountno=p_Accountno,Address=p_address,pincode=p_pincode,branch=p_branch,IFSCCode=p_IFSCCode,Mobile=p_Mobile);
commit;
end;


create or replace procedure deleteBank
(p_Name in banktable.name%type)
is 
begin 
 delete from banktable where Name=p_name;
 commit;
 end;
 


--joins


select banktable.Name,banktable.Address, bankamount.amount
from banktable
inner join
 bankamount
banktable.Name= bankamount.Name;



select banktable.Name,banktable.Address, bankamount.amount
from banktable
left join
 bankamount
banktable.Name= bankamount.Name;


select banktable.Name,banktable.Address, bankamount.amount
from banktable
right join
 bankamount
banktable.Name= bankamount.Name;

select banktable.Name,banktable.Address, bankamount.amount
from banktable
full join
 bankamount
banktable.Name= bankamount.Name;


-- index

create index ind
on banktable(Name)

create index ind1
on banktable(Name,Address)



 
 
 