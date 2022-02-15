create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255),
quantidade bigint,
marca varchar(255),
primary key(id)
);

create table tb_produto(
id bigint auto_increment,
nome varchar(255),
tipo varchar(255),
preco decimal(4,2),
peso varchar(255),
dtValidade date,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_categoria(descricao, quantidade, marca) 
values ("Carne Suína", 300, "Seara");
insert into tb_categoria(descricao, quantidade, marca) 
values ("Carne Bovina", 500, "Friboi");
insert into tb_categoria(descricao, quantidade, marca) 
values ("Aves", 500, "Sadia");
insert into tb_categoria(descricao, quantidade) 
values ("Miúdos", "150");
insert into tb_categoria(descricao) 
values ("Outros");

insert into tb_produto(nome, tipo, preco, peso, dtValidade, categoria_id) 
values("Línguiça", "Defumada", 19.90, "500 g", "2022-10-29", 1);
insert into tb_produto(nome, preco, peso, dtValidade, categoria_id) 
values("Alcatra", 49.50, "1 kg", "2022-10-29", 2);
insert into tb_produto(nome, preco, peso, dtValidade, categoria_id) 
values("Picanha", 66.40, "1,5 kg", "2022-10-29", 2);
insert into tb_produto(nome, tipo, preco, peso, dtValidade, categoria_id) 
values("Moela", "Boi", 18.90, "1 kg", "2022-10-29", 4);
insert into tb_produto(nome, preco, peso, dtValidade, categoria_id) 
values("Filé de frango", 21.00, "1 kg", "2022-10-29", 3);
insert into tb_produto(nome, preco, peso, dtValidade, categoria_id) 
values("Cupim", 35.90, "1 kg", "2022-10-29", 2);
insert into tb_produto(nome, tipo, preco, peso, dtValidade, categoria_id) 
values("Coração", "Frango", 28.90, "1 kg", "2022-10-29", 4);
insert into tb_produto(nome, preco, peso, categoria_id) 
values("Farofa", 5.49, "500 g", 5);

select nome, preco, peso, dtValidade from  tb_produto where preco > 50.00 order by preco;

select nome, preco, peso, dtValidade  from  tb_produto where preco 
Between 3.00 and 60.00 order by nome;

select nome, preco, peso, dtValidade  from  tb_produto where nome like "%C%";

select nome, tipo, preco, peso, dtValidade , descricao as categoria, quantidade, marca
from tb_produto
inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id;

select nome, tipo, preco, peso, dtValidade , descricao as categoria, quantidade, marca
from tb_produto
inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id where categoria_id = 3;