create database db_projeto_emanuel;
use db_projeto_emanuel;
create table tb_empregado (mat int not null, 
nome varchar(40) not null, 
id int, 
primary key(mat));
create table tb_departamento (id int not null auto_increment,
 nome_dep varchar(40) not null, 
 primary key(id));
alter table tb_empregado add foreign key(id) references tb_departamento(id);
alter table tb_empregado add sexo enum('F','M','O');

insert tb_departamento values(null,'TI');
insert tb_departamento values(null,'venda');
insert tb_departamento values(null,'compra');
insert tb_departamento values(null,'engsofwt');
insert tb_departamento values(null,'lanche');

select nome_dep  from tb_departamento order by nome_dep desc;

delete from tb_departamento where id=5;

select* from tb_departamento order by nome_dep desc;

insert tb_empregado values(1010, 'davi',4,'m');
insert tb_empregado values(1011, 'edu'   ,4,'O');
insert tb_empregado values(1012, 'mani'  ,3,'M');
insert tb_empregado values(1013, 'carlos',2,'M');
insert tb_empregado values(1014, 'bibi'  ,1,'F');
insert tb_empregado values(1015, 'carla' ,1,'F');

select* from tb_empregado;
select nome,sexo from tb_empregado order by nome;
select nome from tb_empregado where nome like 'c%';
select nome from tb_empregado where nome like '%a%';
select nome from tb_empregado where nome like 'b%i';

update tb_empregado set nome='emanuel davi' where  mat=1012;

alter table tb_empregado add idade int;

select * from tb_empregado;

update tb_empregado set idade=30 where mat=1010;
update tb_empregado set idade=18 where mat=1011;
update tb_empregado set idade=19 where mat=1012;
update tb_empregado set idade=20 where mat=1013;
update tb_empregado set idade=21 where mat=1014;
update tb_empregado set idade=22 where mat=1015;

select*from tb_empregado;
select nome,idade from tb_empregado where idade between 20 and 29;
