use db_construindo_a_nossa_vida;

insert into tb_categorias(material, marca, quantidade) 
values ("Pisos e revestimentos", "Duratex", 3200);
insert into tb_categorias(material, marca, quantidade) 
values ("Material de contrução", "Votoran", 4200);
insert into tb_categorias(material, marca, quantidade) 
values ("Material Hidráulico", "Tigre", 200);
insert into tb_categorias(material, marca, quantidade) 
values ("Pisos e revestimentos", "Portinari", 2100);
insert into tb_categorias(material, marca, quantidade) 
values ("Material de construção", "Vedacit", 2800);

insert into tb_produtos(nome, tipo, tamanho, preco, descricao, categoria_id) 
values ("Piso bege polido", "Piso", "57x57 cm", 49.90, "preço por m²", 1);
insert into tb_produtos(nome, tipo, tamanho, preco, categoria_id) 
values ("Chuveiro de parede redondo", "Chuveiro", "25 cm", 219.90, 3);
insert into tb_produtos(nome, tipo, tamanho, preco, descricao, categoria_id) 
values ("Tijolo comum", "Tijolo", "9x26x40 cm", 12.80, "pacote c/ 10 peças", 2);
insert into tb_produtos(nome, tipo, tamanho, preco, descricao, categoria_id) 
values ("Piso Cerâmico esmaltado Glamour", "Piso", "58x58 cm", 54.90, "preço por m²", 4);
insert into tb_produtos(nome, tipo, tamanho, preco, categoria_id) 
values ("Cimento comum para obra", "Cimento", "50 kg", 26.90, 5);
insert into tb_produtos(nome, tipo, tamanho, preco, categoria_id) 
values ("Chuveiro 1996 quadrado", "Chuveiro", "23 cm", 205.50, 3);
insert into tb_produtos(nome, tipo, tamanho, preco, descricao, categoria_id) 
values ("Bloco cerâmico avermelhado", "Bloco", "12x14x24 cm", 1.99, "preço por unidade", 2);
insert into tb_produtos(nome, tipo, tamanho, preco, categoria_id) 
values ("Argamassa colante para porcelanato", "Argamassa", "20 kg", 47.90, 2);

select * from tb_produtos;

select * from tb_produtos where preco > 50 order by nome;

select * from  tb_produtos where preco Between 3.00 and 60.00 order by preco;

select * from  tb_produtos where nome like "%C%";

select * from  tb_produtos inner join tb_categorias
on tb_categorias.id = tb_produtos.categoria_id order by tb_produtos.id;

select * from  tb_produtos inner join tb_categorias
on tb_categorias.id = tb_produtos.categoria_id where categoria_id = 3;
