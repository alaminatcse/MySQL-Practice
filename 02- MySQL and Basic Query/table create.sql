-- db create
create database practice;

-- use db
use practice;

-- table create
create table Student (
	Roll char(4) primary key,
    Name varchar(50),
    Marks double
);

-- insert a row into the table
insert into student
(roll, name, marks) values(1, 'Alamin', 83);

insert into student
(roll, name, marks) values(2, 'Rahim', 82);

insert into student
(roll, name, marks) values(3, 'Rahim', 82);

-- try to wrong insertion into the student table
-- (roll, name, marks) values(3, 'Karim', 72);	-- can't insert due to duplicate PK values

-- before update u need to turn off below mode
set sql_safe_updates = 0;
update student
set name = 'Karim', marks = 81
where roll = 3;
-- set sql_safe_updates = 1;

-- set sql_safe_updates = 0;
delete from student
where roll = 3;
set sql_safe_updates = 1;

-- to drop table we use below command
-- drop table student;