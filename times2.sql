use bancotimes;
describe times;
select * from times;

-- Insert

INSERT INTO  times(nome,valor,anodefundacao) VALUES('SaoPaulo',3000000,1940);

-- AAAA-MM-DD
INSERT INTO  jogadores (NOME, SALARIO, DATANASCIMENTO,idtimes) VALUES ('Frederico',30000,'1940-01-01',9);

SELECT * FROM jogadores;

DELETE * FROM  times where idtimes = 5;

SELECT * FROM times as t, jogadores as j where t.idtimes = j.idtimes;

SELECT distinct(t.idtimes) FROM times as t, jogadores as j where t.idtimes = j.idtimes;

select * from times where times.idtimes not in (select distinct(t.idtimes) from times as t, jogadores as j where t.idtimes = j.idtimes);

insert into jogadores(NOME, SALARIO, DATANASCIMENTO,idtimes) values ('Teco',3000,'1940-02-02',5);

INSERT INTO  times(nome,valor,anodefundacao) VALUES('Flamengo',9000000,1910);


insert into jogadores(NOME, SALARIO, DATANASCIMENTO,idtimes) values ('Arrascaeta',30000,'1992-03-12',8);

update times  set=
