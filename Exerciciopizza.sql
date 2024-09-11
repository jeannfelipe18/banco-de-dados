DESCRIBE atendentes;
USE clubedapizza;
select * from pizzas;
select * from pedidos;
select * from itens;
select * from atendentes;

-- 1 
insert into atendentes( idatendentes, nomeatendente, codigo) values(9,'Junior','JF9');

-- 2
insert into pizzas (idpizzas, sabor, preco, quantidade, quantidade_critica) values (15, 'Banana', 40, 60, 10);

-- 3 
UPDATE pizzas SET preco = 50, quantidade_critica = 5 where idpizzas = 15;

-- 4 
select * from pizzas order by preco Asc;

-- 5
select * from pedidos order by valor_total Desc;

-- 6 
DELETE  FROM pizzas WHERE idpizzas=15;

-- 7
select avg(preco) as media from pizzas;

-- 8
select min(valor_total) from pedidos;

-- 9 
select count(idpedidos) from pedidos;

-- 10
SELECT DISTINCT datapedido from pedidos;

-- 11
select count(preco) from pizzas where preco > 50;

-- 12
select * from  pizzas where quantidade_critica = 5;

-- 13
INSERT INTO pedidos (idpedidos, idatendentes, idsocios, datapedido, valor_total) VALUES (84, 1, 3, '2024-03-19', 200);

-- 14 
INSERT INTO itens (idpedidos, idpizzas, quantidade, tipo) VALUES (84, 3, 5, 1);

-- 15
update pizzas set preco = 30 where idpizzas = 2;

-- 16
update atendentes set nomeatendente = 'Jeann' where idatendentes = 9;
