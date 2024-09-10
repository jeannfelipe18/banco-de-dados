use clinica2021;
select * from pacientes;
select * from ambulatorios;
select * from funcionarios;
select * from especialidades;
select * from medicos;
select * from consultas;
select * from doencas;
describe ambulatorios;
describe consultas;

-- 1 --
insert into pacientes (nome, sexo, doenca_inicial) values ('Jeann F', 'm', 'gripe');

-- 2 --
insert into ambulatorios (numero, andar, capacidade) values (12, 2, 60);

-- 3 --
update pacientes set nome  = 'Jeann Felipe' where idpacientes = 39;

-- 4 --
update pacientes set idade = 30 where idpacientes = 39;

-- 5 --
update pacientes set doenca_inicial = null where idpacientes = 39;

-- 6 --
-- ocorreu um erro devido a depêndencia da chave estrangeira, não é possível adicionar um novo funcionário sem atribui a ele um ambulatório

-- 7--
insert into especialidades (descricao) values ('Patologia');

-- 8 --
insert into medicos (idambulatorios, nome, crm, salario, idade, idespecialidades) values (4, 'Gabriel De La Cruz', 9988, 8700, 41, 15);

-- 9 --
update medicos set salario = 10000 where idmedicos =15;

-- 10 --
update ambulatorios set capacidade = 50 where idambulatorios = 2;

-- 11 --
insert into pacientes (nome, sexo, idade, doenca_inicial) values ('Fernanda', 'f', 22, 'gripe');

-- 12 --
delete from pacientes where idpacientes = 43;

-- 13 --
insert into consultas (idmedicos, idpacientes, idambulatorios, dia, hora, iddoencas) values (7, 39, 3, '2024-09-18', '15:30:00', 2);

-- 14 --
update consultas set dia = '2024-03-21' where idmedicos =7;
update consultas set hora ='16:20:00' where idmedicos =7;

-- 15 --
update funcionarios set idade = 34 where idfuncionarios =1;

-- Jeann Felipe --