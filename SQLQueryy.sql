create table studdent (id int NOT NULL UNIQUE , name varchar (30), course_id char (20), Primary key(id));
insert into studdent( id, name , course_id) values ( 1 , 'harry' , 'A') ;
insert into studdent( id, name , course_id) values ( 2 , 'jack' , 'B') ;
insert into studdent( id, name , course_id) values ( 3 , 'joseph' , 'A') ;
insert into studdent( id, name , course_id) values ( 4 , 'Jenny' , 'B') ;
insert into studdent( id, name , course_id) values ( 5 , 'KP' , 'C') ;
insert into studdent( id, name , course_id) values ( 2 , 'jeff' , 'E');

select * from studdent;

// Distinct//  
SELECT DISTINCT id from studdent;

//where clause//
select * from studdent where name='harry'

//AND Operator//
select * from studdent where name='harry' and name='jack';

//Order by//
select * from studdent order by name;

//top//
select top 3 * from studdent;

//aggregate functions//
select min(id) from studdent;

select max(id) from studdent;

select avg(id) from studdent;

select count(id) from studdent;

select sum(id) from studdent;


//update//
update  studdent
set id=10 where name='jack'


//like//
select * from studdent where name like '%k'


//between//
select * from studdent where  id between 1 and 5


//group by//
SELECT COUNT(id), name
FROM studdent
GROUP BY name;


//having clause//
SELECT COUNT(id), name
FROM studdent
GROUP BY name
HAVING COUNT(id) < 2;

delete from studdent where course_id='E'

// all //
SELECT ALL id
FROM studdent
WHERE id>3;







create table coursee (coursee_id char (20), coursee_name char (30));
insert into coursee ( coursee_id , coursee_name ) values ( 'A' , 'python');
insert into coursee( coursee_id, coursee_name ) values ( 'B' , 'sql');
insert into coursee( coursee_id , coursee_name ) values ( 'C' , 'Cpp');
insert into coursee( coursee_id , coursee_name ) values ( 'D' , 'java');
insert into coursee ( coursee_id , coursee_name ) values ( 'F' , 'html');

select * from coursee;

select distinct coursee_name from coursee;

select * from coursee where coursee_name='java'

select * from coursee where coursee_name='python' and coursee_name='cpp';


select * from coursee order by coursee_name ;

select top 3 * from coursee;

select min(coursee_id) from coursee;

select max(coursee_id) from coursee;

update  coursee
set coursee_id='k' where coursee_name ='cpp'

select * from coursee where coursee_name like '%n'

//inner join//
select studdent.id , studdent.name , coursee.coursee_name from studdent INNER JOIN coursee ON studdent.course_id =coursee.coursee_id;

//outer join//
select s.id , s.name , c.course_name from studdent s FULL OUTER JOIN course c ON s.course_id= c.course_id;

//left join//
select studdent.id , studdent.name , coursee.coursee_name from studdent LEFT JOIN coursee on studdent.course_id= coursee.coursee_id;

//right join//
select studdent.id , studdent.name , coursee.coursee_name from studdent RIGHT JOIN coursee on studdent.course_id=coursee.coursee_id;

//union//
select course_id from studdent UNION  select coursee_id from coursee;

// aliases//
SELECT coursee_id AS c
FROM coursee



