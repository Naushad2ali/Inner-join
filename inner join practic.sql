create database ss
use ss
create table Employee(E_Id int primary key identity not null,E_Name varchar(max),Address varchar(40))
insert into Employee values('sohan','alighr'),('bharat','vasepur'),('aamir','mumbai')

select *from Employee
select *from  student

create table student(S_Id  int primary key not null,S_Name varchar(max),Email varchar(30),Phone varchar(40),
E_id int  foreign key References Employee(E_Id))

insert into  student values ('mohan','mohan12@gmail.com','987656',2),('brjesh','brjesh32@gmail.com','98764793',1),
('sonu','sonu34@gmail.com','785954',3)


select * from Employee as A inner join student as B
on A.E_Id=B.E_Id

select E_Name,Email,S_Name from Employee as A inner join student as B
on A.E_Id=B.E_Id