create database empresa_manel;
use empresa_manel;

create table tb_funcionario(mat int not null auto_increment, 
nome varchar(20) not null, 
primary key(mat));
create table tb_dependente(id int not null, 
nome_dep varchar(20) not null, 
mat int, 
primary key(id), 
foreign key(mat) references tb_funcionario(mat));

alter table tb_funcionario add sexo enum('f','m');
alter table tb_funcionario add endereco varchar(40);
alter table tb_funcionario add email varchar(30),add telefone varchar(15);

insert tb_funcionario values(null,'manel','m','asa_norte','manel@gmail.com','61-0000-0000');
insert tb_funcionario values(null,'bibi','f','gama','bibi@gmail.com','61-0000-0001');
insert tb_funcionario values(null,'mani','m','recanto','mani@gmail.com','61-0000-0011');
insert tb_funcionario values(null,'ana','f','samanbaia','ana@gmail.com','61-0000-0111');
select * from tb_funcionario;

select nome,sexo from tb_funcionario;