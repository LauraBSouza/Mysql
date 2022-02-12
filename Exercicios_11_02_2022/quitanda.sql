 -- comentario
create database db_quitanda;

use db_quitanda;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
preco decimal, 
primary key (id)
);

insert into tb_produtos (nome, quantidade, preco) 
values ("Maça", 10, 1.99);  -- enche a tabela com valores
insert into tb_produtos (nome, quantidade, preco) 
values ("Banana", 13, 4.99);
insert into tb_produtos (nome, quantidade, preco) 
values ("Manga", 20, 5.49);
insert into tb_produtos (nome, quantidade, preco) 
values ("Melancia", 3, 10.00);
insert into tb_produtos (nome, quantidade, preco) 
values ("Cebola", 3, 1.50);

select * from tb_produtos;  -- mostra a tabela

select nome from tb_produtos; -- mostra só o nome

select * from tb_produtos where preco > 1.99; -- com preços maiores que 1.99

update tb_produtos set preco = 1.99 where id =1 ; -- altera um produto

delete from tb_produtos where id = 2; -- deleta um produto

set SQL_SAFE_UPDATES = 0; -- desabilita o update sem where e muda tudo, 0 liga e 1 desliga

update tb_produtos set descricao = "Banana ouro"; -- comando invalido por segurança

alter table tb_produtos modify preco decimal(8,2); -- até 00000000.00
 -- altera a estrutura da tabela

alter table tb_produtos add descricao varchar(255);

alter table tb_produtos drop descricao; -- exclui a coluna