create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias(
id bigint auto_increment,
nome varchar(255),
tipo varchar(255),
tamanho varchar(255),
primary key(id)
);

create table tb_produtos(
id bigint auto_increment,
nome varchar(255),
sabor varchar(255),
preco decimal(4,2),
pagamento varchar(255),
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

insert into tb_categorias(nome, tipo, tamanho) values ("Pizzas", "Doce", "Grande");
insert into tb_categorias(nome, tipo, tamanho) values ("Pizzas", "Salgada", "Grande");
insert into tb_categorias(nome, tipo, tamanho) values ("Pizzas", "Doce", "Média");
insert into tb_categorias(nome, tipo, tamanho) values ("Pizzas", "Salgada", "Média");
insert into tb_categorias(nome, tipo, tamanho) values ("Bebidas", "Refrigente", "Pequeno");
insert into tb_categorias(nome, tipo, tamanho) values ("Bebidas", "Refrigerante", "Grande");

insert into tb_produtos(nome, sabor, preco, pagamento, categoria_id) 
values("Pizza Calabresa", "Molho de tomate, mussarela e orégano", 45.90, "Pix", 2);
insert into tb_produtos(nome, sabor, preco, pagamento, categoria_id) 
values("Pizza 4 Queijos", "Mussarela, Catupiry, provolone e Parmesão", 46.50, "Cartão", 2);
insert into tb_produtos(nome, sabor, preco, pagamento, categoria_id) 
values("Pizza Marguerita", "Molho de tomate, mussarela e orégano", 35.90, "Pix", 4);
insert into tb_produtos(nome, sabor, preco, pagamento, categoria_id) 
values("Pizza Prestígio", "Coco, leite condensado e chocolate", 28.50, "Dinheiro", 3);
insert into tb_produtos(nome, sabor, preco, pagamento, categoria_id) 
values("Pizza Romeu e Julieta", "Goiabada, mussarela e cereja", 26.50, "Cartão", 1);
insert into tb_produtos(nome, sabor, preco, pagamento, categoria_id) 
values("Refrigerante Dolly", "Sabor Tradicional", 4.80, "Pix", 5);
insert into tb_produtos(nome, sabor, preco, pagamento, categoria_id) 
values("Regrigerante Coca Cola", "Sabor Cola", 8.50, "Pix", 6);
insert into tb_produtos(nome, sabor, preco, pagamento, categoria_id) 
values("Refrigerante Fanta", " Sabor Uva", 7.40, "Pix", 6);


select nome, sabor as descricao, preco, pagamento from  tb_produtos where preco > 45.00 order by preco;

select nome, sabor as descricao, preco, pagamento from tb_produtos where preco Between 29.00 and 60.00 order by nome;

select nome, sabor as descricao, preco from tb_produtos where nome like "%c%";

select tb_produtos.nome as nome, sabor as descricao, preco, pagamento, tb_categorias.nome as categoria, tipo, tamanho
from tb_produtos
inner join tb_categorias
on tb_categorias.id = tb_produtos.categoria_id ;

select tb_produtos.nome as nome, sabor as descricao, preco, pagamento, tb_categorias.nome as categoria, tipo, tamanho
from tb_produtos
inner join tb_categorias
on tb_categorias.id = tb_produtos.categoria_id  where tipo like "%doce%";