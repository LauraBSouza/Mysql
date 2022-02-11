create database db_escola;  

use db_escola; 

create table tb_estudantes(
id bigint auto_increment,
nome varchar(255),
sala varchar(255),
ra bigint,
materia varchar(255),
notaFinal decimal(2,1),
primary key (id)
);

insert into tb_estudantes (nome, sala, ra, materia, notaFinal)
value ("Camila fernandes da Silva" , "7° ano A", 0001087623455, "Matemática" , 9.0);
insert into tb_estudantes (nome, sala, ra, materia, notaFinal)
value ("Bruna Alves da Oliveira" , "7° ano C", 0001382914724, "Matemática" , 6.5);
insert into tb_estudantes (nome, sala, ra, materia, notaFinal)
value ("Fernanda Coutinho de Sousa" , "9° ano B", 0001382914724, "História" , 8.8);
insert into tb_estudantes (nome, sala, ra, materia, notaFinal)
value ("Tiago Ferreira Lopes" , "8° ano D", 0001487610938, "Geografia" , 5.0);
insert into tb_estudantes (nome, sala, ra, materia, notaFinal)
value ("Caio Duarte Castro" , "7° ano A", 0001382914724, "Português" , 9.7);
insert into tb_estudantes (nome, sala, ra, materia, notaFinal)
value ("Geovana Garcia Batista" , "8° ano E", 0001527891726, "Inglês" , 7.5);
insert into tb_estudantes (nome, sala, ra, materia, notaFinal)
value ("Bernardo Gomes Barbosa" , "6° ano B", 0001382914724, "Ciências" , 5.9);
insert into tb_estudantes (nome, sala, ra, materia, notaFinal)
value ("João da Silva Santos" , "6° ano c", 0001298374659, "Artes" , 9.0);

select * from tb_estudantes where notaFinal > 7.0;  

select * from tb_estudantes where notaFinal < 7.0; 

update tb_estudantes set notaFinal = 6.0 where id = 7;

select * from tb_estudantes;
