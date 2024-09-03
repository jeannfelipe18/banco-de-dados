-- Questão 01
describe pacientes;
select nome, sexo from pacientes;

describe consultas;

select dia, hora from consultas;

-- Dia e hora da paciente paty franca
select c.dia c.hora from consultas  as c, pacientes as p 
where p.idpacientes = c.idpacientes and p.nome = 'Paty Franca';