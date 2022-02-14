create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
nome varchar(255),
tipo varchar(255),
caracteristica varchar(255),
primary key(id)
);

create table tb_personagens(
id bigint auto_increment,
nome varchar(255),
ataque bigint,
defesa bigint,
classe_id bigint,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

select * from tb_personagens;

insert into tb_classe(nome, tipo, caracteristica) values ("Bárbaro", "Pricipal","Média resistência, Alto dano");
insert into tb_classe(nome, tipo, caracteristica) values ("Mago","Principal", "Baixa resistência, Altíssimo dano");
insert into tb_classe(nome, tipo, caracteristica) values ("Bardo", "Secundária", "Baixa resitência, Médio dano");
insert into tb_classe(nome, tipo, caracteristica) values ("Druida", "Secundária", "Média resistência, Médio dano");
insert into tb_classe(nome, tipo, caracteristica) values ("Espadachim", "Secundária", "Baixa resistência, Alto dano");

insert into tb_personagens(nome, ataque, defesa, classe_id) values("Cornelius", 4900, 1050, 2);
insert into tb_personagens(nome, ataque, defesa, classe_id) values("Jaskier", 1800, 845, 3);
insert into tb_personagens(nome, ataque, defesa, classe_id) values("Merlim", 1900, 2400, 4);
insert into tb_personagens(nome, ataque, defesa, classe_id) values("Zoro", 3500, 867, 5);
insert into tb_personagens(nome, ataque, defesa, classe_id) values("Gimle", 3360, 2000, 1);
insert into tb_personagens(nome, ataque, defesa, classe_id) values("Olozor", 3800, 900, 2);
insert into tb_personagens(nome, ataque, defesa, classe_id) values("Krumm", 3024, 2503, 1);
insert into tb_personagens(nome, ataque, defesa, classe_id) values("Lilith", 4300, 876, 2);

select nome, ataque from  tb_personagens where ataque > 2000 order by ataque asc;

select nome, defesa from tb_personagens where defesa Between 1000 and 2000 order by nome;

select * from tb_personagens where nome like "%c%";

select tb_personagens.nome, ataque, defesa, tb_classe.nome, tipo, caracteristica from tb_personagens 
inner join tb_classe 
on tb_classe.id = tb_personagens.classe_id;

select tb_personagens.nome, tb_classe.nome as classe, tipo, caracteristica from tb_personagens 
inner join tb_classe 
on tb_classe.id = tb_personagens.classe_id where tb_classe.nome like "%Mago%";