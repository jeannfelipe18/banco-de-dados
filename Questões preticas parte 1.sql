use bancotimes;
describe times;
select * from times;

-- 1
INSERT INTO  times(nome,valor,anodefundacao) VALUES('SaoPaulo',3000000,1940);
-- 2
INSERT INTO  jogadores (NOME, SALARIO, DATANASCIMENTO,idtimes) VALUES ('Frederico',30000,'1940-01-01',2);
-- 3
INSERT INTO  jogadores (NOME, SALARIO, DATANASCIMENTO,idtimes) VALUES ('Carlos',60000,'1990-01-01',6);
-- 4
update times set valor = 100000 where idtimes = 6;
-- 5
update times set nome = 'EC Bahia' where idtimes = 1;
-- 6
DELETE  FROM  times where idtimes=5;
-- 7
DELETE FROM jogadores where idjogadores = 13;
-- 8
DELETE FROM jogadores where idjogadores = 7;