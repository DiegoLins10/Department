-- query criacao departamento

create table dbo.Department(
DepartmentId int identity (1,1)
, DepartmentName varchar(500)
)

-- query criacao employee table
create table dbo.Employee(
EmployeeId int identity (1,1)
, EmployeeName varchar(500)
, Department varchar(500)
, DateOfJoining date
, PhotoFileName varchar(500)
)


select *
from Department

select *
from Employee

insert into Department values ('Support')

insert into Employee values ('Diego', 'IT', '2021-02-15', 'anonymous.png')
insert into Employee values ('Sam', 'IT', '14-08-2021', 'anonymous.png')
