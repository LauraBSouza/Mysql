create database db_rh;  

use db_rh; -- entrando nesse banco de dados

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255),
cpf bigint,
endereco varchar(255),
cargo varchar(255),
salario decimal(8,2),
primary key (id)
);

insert into tb_funcionarios ( nome, cpf, endereco, cargo, salario)
value ("Maria", 12345675642, "Rua dos professores, n°500", "Gerente", 3000.00);
insert into tb_funcionarios ( nome, cpf, endereco, cargo, salario)
value ("Joana", 98745723486, "Rua dois, n°375", "Vendedor", 2300.00);
insert into tb_funcionarios ( nome, cpf, endereco, cargo, salario)
value ("Carlos", 14268047936, "Rua da mamona n°157", "Vendedor", 2300.00);
insert into tb_funcionarios ( nome, cpf, endereco, cargo, salario)
value ("Bruna", 97472467496, "Rua são joão n°29", "Estagiário", 1800.00);
insert into tb_funcionarios ( nome, cpf, endereco, cargo, salario)
value ("Fernando", 28539639568, "Rua santa maria  n°333", "Estagiário", 1800.00);

select * from tb_funcionarios where salario > 2000.00;  

select * from tb_funcionarios where salario < 2000.00; 

update tb_funcionarios set salario = 3500.00 where id = 1;

select * from tb_funcionarios;