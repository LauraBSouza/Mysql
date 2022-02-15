use db_cursoDaMinhaVida;

insert into tb_categorias(area, certificado, tipo_curso) 
values ("Tecnologia", "Incluso", "EAD");
insert into tb_categorias(area, certificado, tipo_curso) 
values ("Marketing", "Pago à parte", "EAD");
insert into tb_categorias(area, tipo_curso) 
values ("Saúde", "Presencial");
insert into tb_categorias(area, certificado, tipo_curso) 
values ("Design", "Incluso", "EAD");
insert into tb_categorias(area, certificado, tipo_curso) 
values ("Contabilidade", "Pago à parte" , "Presencial");

insert into tb_cursos(nome, preco, duracao, categoria_id) 
values ("Introdução à Java", 67.80, "150 horas", 1);
insert into tb_cursos(nome, preco, duracao, categoria_id) 
values ("Marketing do básico ao Avançado", 67.80, "150 horas", 2);
insert into tb_cursos(nome, preco, duracao, categoria_id) 
values ("Primeiros socorros", 37.80, "72 horas", 3);
insert into tb_cursos(nome, preco, duracao, categoria_id) 
values ("Aprenda Python do básico ao avançado", 109.80, "300 horas", 1);
insert into tb_cursos(nome, preco, duracao, categoria_id) 
values ("Design gráfico do básico ao avançado", 97.80, "400 horas", 4);
insert into tb_cursos(nome, preco, duracao, categoria_id) 
values ("Aprenda a cuidar de suas finanças", 25.60, "80 horas", 2);
insert into tb_cursos(nome, preco, duracao, categoria_id) 
values ("Marketing das redes sociais", 67.80, "150 horas", 2);
insert into tb_cursos(nome, preco, duracao, categoria_id) 
values ("Aprenda UI/UX", 67.80, "150 horas", 4);


select * from tb_cursos where preco > 50.00 order by nome;

select * from  tb_cursos where preco Between 3.00 and 60.00 order by nome;

select * from  tb_cursos where nome like "%J%";

select * from  tb_cursos inner join tb_categorias
on tb_categorias.id = tb_cursos.categoria_id order by tb_cursos.id;

select * from  tb_cursos inner join tb_categorias
on tb_categorias.id = tb_cursos.categoria_id where nome like "%Java%" ;
