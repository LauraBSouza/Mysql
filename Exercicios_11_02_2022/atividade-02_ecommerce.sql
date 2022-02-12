create database db_ecommerce; 
use db_ecommerce; -- entrando nesse banco de dados

create table tb_produtos(
id bigint auto_increment,
nome varchar(255),
marca varchar(255),
tipo varchar(255),
quantidade int,
preco decimal(8,2),
primary key (id)
);

insert into tb_produtos (nome, marca, tipo, quantidade, preco)
value ("Camiseta Harry Potter" , "Renner", "Roupa casual", 15, 59.99);
insert into tb_produtos (nome, marca, tipo, quantidade, preco)
value ("Calça  Wide Leg" , "Forever 21", "Roupas casuais", 23, 109.99);
insert into tb_produtos (nome, marca, tipo, quantidade, preco)
value ("Blazer Alfaiataria" , "Renner", "Roupas formais", 15, 224.99);
insert into tb_produtos (nome, marca, tipo, quantidade, preco)
value ("Tênis nike Air Zoom" , "Nike", "Calçados", 12, 715.99);
insert into tb_produtos (nome, marca, tipo, quantidade, preco)
value ("Tênis adidas Originals Superstar" , "Adidas", "Calçados", 23, 389.99);
insert into tb_produtos (nome, marca, tipo, quantidade, preco)
value ("Calça Skinny" , "C&A", "Roupas casuais", 14, 89.99);
insert into tb_produtos (nome, marca, tipo, quantidade, preco)
value ("Tênis puma Mayze ", "Puma", "Calçados", 9, 549.79);
insert into tb_produtos (nome, marca, tipo, quantidade, preco)
value ("Mocasin couro fivela preta" , "Arrezo", "Calçados", 9, 298.99);

select * from tb_produtos where preco > 500.00;  

select * from tb_produtos where preco < 500.00; 

update tb_produtos set preco = 319.99 where id = 8;

select * from tb_produtos;