create database vendas;
use vendas;
show tables;

CREATE TABLE VENDEDORES(
IDVENDEDORES INT unsigned NOT NULL auto_increment,
nome varchar(50) not null,
datacontratacao date,
salario float default 1000,
comissão float,
primary key(idvendedores)
);

CREATE table clientes(
idclientes int unsigned not null auto_increment,
nome varchar(50) not null,
endereco varchar(50),
cidade varchar(50),
cep varchar(50),
primary key(idclientes)
);

create table faturas(
idfaturas int unsigned not null auto_increment,
data date,
idclientes int unsigned not null,
idvendedores int unsigned not null,
primary key(idfaturas),
foreign key(idclientes) references clientes(idclientes),
foreign key(idvendedores) references vendedores(idvendedores)
);

alter table clientes ADD telefone varchar(10); -- (61)99247-4578
alter table  clientes modify endereco text;
alter table clientes add sexo enum('m','f');
alter table clientes add cpf varchar(14);      -- 143.467.076-34
describe clientes;

describe clientes;

insert into clientes (nome, endereco, cidade, cep, telefone, sexo, cpf) 
values ("João Silva","Asa Sul","Brasilia","72600-00","6192675789",'m', "657.243.678-24");
insert into clientes (nome, endereco, cidade, cep, telefone, sexo, cpf)
values ("Pedro Santos","Asa Norte","Brasilia","72600-00","6192475989",'m', "697.263.698-94");
insert into clientes (nome, endereco, cidade, cep, telefone, sexo, cpf)
values ("José Frederico","Taguatinga","Brasilia","72600-00","6192685719",'m', "687.443.638-44");
insert into clientes (nome, endereco, cidade, cep, telefone, sexo, cpf)
values ("De la Cruz Silva","Ceilandia","Brasilia","72600-00","6199675839",'m', "957.643.978-14");

describe vendedores;

INSERT INTO vendedores(nome, datacontratacao, salario) 
value ('Luiz','2024-12-01',3.350);
INSERT INTO vendedores (nome, datacontratacao, salario)
value ('Maria','2024-06-10',350.000);
INSERT INTO vendedores (nome, datacontratacao, salario)
value ('Tiago','2024-07-15',450.000);
INSERT INTO vendedores (nome, datacontratacao, salario)
value ('Pedro','2024-08-10',550.000);

select * from vendedores;
update vendedores