	select *
	from Empregado

insert into Empregado VALUES('Diego Lins', 40, 'ADM', 5, 5000, null)

select *
from Departamento

ALTER TABLE empregado
ADD PhotoFileName varchar(500)     
CONSTRAINT photo_name DEFAULT 'anonymous.png' WITH VALUES