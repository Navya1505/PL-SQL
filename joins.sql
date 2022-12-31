select * from students

insert into studentscourse values('.net','1');
insert into studentscourse values('java','3');
insert into studentscourse values('cloud','4');
insert into studentscourse values('.net','9');

select * from Studentscourse

select students.Name,students.Address,studentscourse.coursename
from students
inner join
studentscourse
on students.rollno=studentscourse.rollno;

select students.Name,students.Address,studentscourse.coursename
from students
left join
studentscourse
on students.rollno=studentscourse.rollno;

select students.Name,students.Address,studentscourse.coursename
from students
right join
studentscourse
on students.rollno=studentscourse.rollno;


select students.Name,students.Address,studentscourse.coursename
from students
full join
studentscourse
on students.rollno=studentscourse.rollno;


--
create index Ind
on students(Name)

create index Ind2
on students(Name,Address)










