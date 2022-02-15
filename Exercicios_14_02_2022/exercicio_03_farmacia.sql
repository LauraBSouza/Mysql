create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
nome varchar(255),
tipo varchar(255),
descricao varchar(255),
primary key(id)
);

create table tb_produto(
id bigint auto_increment,
nome varchar(255),
marca varchar(255),
quantidade varchar(255),
preco decimal(4,2),
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_categoria(nome, tipo, descricao) 
values ("Medicamentos", "Anti-inflamatórios", "Utilização via Oral, indicado no alívio da dor.");
insert into tb_categoria(nome, tipo, descricao) 
values ("Medicamentos", "Alergias e infecções", "Utilização via Oral, uso recomendado para adultos e crianças acima de 12 anos");
insert into tb_categoria(nome, tipo, descricao) 
values ("Saúde", "Vitaminas e suplementos", "Utilização via Oral, uso recomendado para adultos e crianças acima de 12 anos: 1 comprimido efervescente ao dia.");
insert into tb_categoria(nome, tipo, descricao) 
values ("Cosméticos", "Hidratante facial", "Uso externo, evite contato com os olhos,");
insert into tb_categoria(nome, tipo, descricao) 
values ("Higiene pessoal", "Creme dental", "Evite contato com os olhos, uso recomendado para criaças maiores de 6 anos");

insert into tb_produto(nome, marca, quantidade, preco, categoria_id) 
values("Dorflex", "Dorflex", "10 comprimidos", 6.10, 1);
insert into tb_produto(nome, marca, quantidade ,preco, categoria_id) 
values("Novalgina", "Novalgina", "10 comprimidos", 6.10, 1);
insert into tb_produto(nome, marca, quantidade ,preco, categoria_id) 
values("Vitamina C Rexodon", "Rexodon", "30 comprimidos", 9.99, 3);
insert into tb_produto(nome, marca, quantidade ,preco, categoria_id) 
values("Ibuprofeno", "Neo Química", "10 comprimidos", 5.90, 1);
insert into tb_produto(nome, marca, quantidade ,preco, categoria_id) 
values("Loratamed", "Cimed", "12 comprimidos", 9.80, 2);
insert into tb_produto(nome, marca, quantidade ,preco, categoria_id) 
values("Complexo B Ems", "Ems", "10 comprimidos", 23.95, 3);
insert into tb_produto(nome, marca, quantidade ,preco, categoria_id) 
values("Hidratante facial Needs vita C", "Needs", "50 g", 22.50, 4);
insert into tb_produto(nome, marca, quantidade ,preco, categoria_id) 
values("Hidratante facial Nívea com Ácido Hialurônico e Pepino", "Nívea", "100 g", 29.90, 4);
insert into tb_produto(nome, marca, quantidade ,preco, categoria_id) 
values("Creme dental Colgate tripla ação", "Colgate", "180 g", 4.60, 1);

select nome, marca, quantidade, preco from  tb_produto where preco > 50.00 order by preco;

select nome, marca, quantidade, preco from  tb_produto where preco 
Between 3.00 and 60.00 order by nome;

select nome, marca, quantidade, preco from  tb_produto where nome like "%B%";

select tb_produto.nome, marca, quantidade, preco, tb_categoria.nome as categoria, tipo, descricao
from tb_produto
inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.nome, marca, quantidade, preco, tb_categoria.nome, tipo, descricao
from tb_produto
inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id where categoria_id = 4;



