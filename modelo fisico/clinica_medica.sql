create database clinica_medica;
use clinica_medica;

create table tb_paciente(num int not null auto_increment, nome varchar(40) not null, primary key(num));
create table tb_consulta(num int, crm int, dia int not null);
create table tb_medico(crm int not null, NM_medico varchar(40) not null, cargo varchar(40) not null, primary key(crm));

alter table tb_paciente add sexo enum('f','m');

insert tb_paciente values(null, 'bibi','f');
insert tb_paciente values(null, 'manel','m');
insert tb_paciente values(null, 'mani','m');
insert tb_paciente values(null, 'ana','f');
insert tb_paciente values(null, 'vovo','f');
select * from tb_paciente;

insert tb_medico values(1, 'jessica', 'doutor');
insert tb_medico values(2, 'mana', 'enfermeiro');
insert tb_medico values(3, 'diego', 'doctor');
insert tb_medico values(4, 'victor', 'doctor');
insert tb_medico values(5, 'angela', 'enfermeira');
select * from tb_medico;

insert tb_consulta values(1,5,2);
insert tb_consulta values(2,4,10.2023);
insert tb_consulta values(3,3,20.10);
insert tb_consulta values(4,2,21.10);
insert tb_consulta values(5,1,22.10);
select * from tb_consulta;

