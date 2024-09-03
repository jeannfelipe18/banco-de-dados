use bancotimes;
show tables;

describe times;

SELECT nome, valor, anodefundacao from times WHERE anodefundacao > 1900;

SELECT nome, valor, anodefundacao from times WHERE anodefundacao > 1900 and 1920;

-- tabel de jogadores - Script
-- Autor: Samuel Novais
-- Data: 03- 09 - 2024

describe jogadores;
SELECT NOME, SALARIO, DATANASCIMENTO FROM jogadores;

select nome, salario from jogadores
where salario > 3000 or salario < 2000;

select nome, salario from jogadores where nome = 'Jorge';

select * from jogadores order by nome Asc;

select count(*) from jogadores;

select count(*) as total from jogadores;

select max(salario) from jogadores;

select min(salario) from jogadores;

select sum(salario) as folha_pagamento from jogadores;

select nome, anodefundacao from times order by nome;

select avg(valor) as media from times;

-- Questão 03
select NOME, SALARIO, DATANASCIMENTO from jogadores order by DATANASCIMENTO asc;

-- Questão 04
select nome, salario from jogadores where salario > 2000;

-- Qustão 05
select sum(valor) from times;

-- Questão 06
select nome from jogadores order by nome Desc;

-- Questão 07
select nome, min(valor) from times group by nome;

-- Questão 08
select nome, DATANASCIMENTO from jogadores where DATANASCIMENTO >'2000-01-01';

-- Questão 09
select count(nome) from jogadores
where salario < 3000;

-- Questão 10
select max(valor) from times;