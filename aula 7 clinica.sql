use clinica2021;

select * from pacientes;

select nome, sexo, idade from pacientes where idade > 18; 
select count(nome) as total,sexo from pacientes group by sexo;

select avg(salario) as media,sexo from funcionarios where salario > 1000 group by sexo order by sexo;

select idpacientes, count(dia) as total from consultas group by idpacientes;

select P.nome, C.idpacientes, count(dia) as total from consultas as C, pacientes as P where C.idpacientes = P.idpacientes 
and
P.nome like 'Livia%' -- '%___' ou '%____%' ou '____%'
group by C.idpacientes order by P.idpacientes;

