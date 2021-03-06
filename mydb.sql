/* http://www.sqlite.org/lang.html  */
/* an example for Database Course  */

/* create a database of students in the university with foreign key plus on delete cascade on update cascade */

.mode columns
.headers on
.nullvalue NULL

pragma foreign_keys = ON;

drop table if exists students;
drop table if exists courses;
drop table if exists sc;

create table students(sid int primary key,name char[10] not null,dept char[2],age int default 20);
create table courses(cid int primary key, cname char[40], spring boolean, teacher char[10]);
create table sc (sid int references students(sid) ON DELETE CASCADE ON UPDATE CASCADE,cid int check (cid in(1,2,3,4,5,6,7,8,9)),semester int,cname char[40],grade int);

/* insert data into the database  */

insert into students values(1,'smith','cs',25);
insert into students values(2,'martin','cs',20);
insert into students values(3,'Bern','cs',28);
insert into students values(4,'Hone','cs',23);
insert into students values(5,'Lihong','ee',18);
insert into students values(6,'John','ee',29);
insert into students values(7,'Flower','ee',25);
insert into students values(8,'martin','ee',20);
insert into students values(9,'smith','ma',21);
insert into students values(10,'wang','ma',19);

insert into courses values(1,'database',1,'lifang');
insert into courses values(2,'softwareEngineering',0,'lifang');
insert into courses values(3,'object-oriented method',0,'lifang');
insert into courses values(4,'compiler',1,'Chen');
insert into courses values(5,'C++',1,'Chen');
insert into courses values(6,'Operating System',0,'wang');
insert into courses values(7,'Artificial Intelligence',1,'wang');
insert into courses values(8,'data structure',1,'wang'); 
insert into courses values(9,'data analysis',0,'wang'); 
insert into courses values(10,'100% success',0,NULL);


insert into sc values(1,8,2,'data structure',80);
insert into sc values(1,5,1,'C++',90);
insert into sc values(1,1,3,'database',NULL);
insert into sc values(1,2,2,'softwareEngineering',60);
insert into sc values(1,4,3,'compiler',50);


insert into sc values(2,8,2,'data structure',50);
insert into sc values(2,5,1,'C++',90);
insert into sc values(2,1,3,'database',NULL);
insert into sc values(2,2,2,'softwareEngineering',90);
insert into sc values(2,4,3,'compiler',80);

insert into sc values(3,8,2,'data structure',85);
insert into sc values(3,5,1,'C++',50);
insert into sc values(3,1,3,'database',NULL);
insert into sc values(3,2,2,'softwareEngineering',60);
insert into sc values(3,4,3,'compiler',50);
insert into sc values(3,6,5,'Operating System',NULL);

insert into sc values(4,8,2,'data structure',55);
insert into sc values(4,5,1,'C++',60);
insert into sc values(4,1,3,'database',NULL);
insert into sc values(4,2,2,'softwareEngineering',60);
insert into sc values(4,4,3,'compiler',60);
insert into sc values(4,6,5,'Operating System',NULL);

insert into sc values(5,8,2,'data structure',85);
insert into sc values(5,5,1,'C++',70);

insert into sc values(6,8,2,'data structure',NULL);
insert into sc values(6,5,1,'C++',70);

insert into sc values(7,8,2,'data structure',55);
insert into sc values(7,5,1,'C++',80);






