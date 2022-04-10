use Dlithe_batch2
create table Employees
(
Eid int primary key identity(1,1),
Ename varchar(20) unique not null,
Age int check(Age>20),
Department varchar(20) default 'Trainee'
)
select * from Employees
insert into Employees values('Abishek',22,'IT')
insert into Employees values('Dhanesh',21,'IT')
insert into Employees (Ename,Age) values('Yadhu',22)
insert into Employees values('Sanjay',23,'HR')
insert into Employees values('Arun',21,'IT')


SET identity_insert Employees on;
insert into Employees(Eid,Ename,Age) values(6,'Alenso',22)

SET identity_insert Employees OFF;

select IDENT_CURRENT('Employees')

alter table Employees drop PK__Empolyee__C1971B538EB96FFF
alter table Employees add constraint pk_eid primary key(Eid)


select lower(Ename) as Name_Lower from Employees;
select UPPER(Ename) as Name_Upper from Employees;
select ASCII(Ename) as Ascii_name from Employees;
select datalength(Ename) as length_name from Employees;


select max(Age) as Max_age from Employees;
select degrees(Age) from Employees;
select avg(Age) from Employees;


