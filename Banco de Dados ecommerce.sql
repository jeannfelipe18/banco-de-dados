Create database ecommerce;
use ecommerce;

CREATE TABLE Cliente(
Cliente_ID int primary key,
Nome varchar(100),
Email varchar(100),
Telefone varchar(15),
Data_Cadastro date
);

CREATE TABLE Endereco(
Endereco_ID int primary key,
Cliente_ID int,
Rua varchar(100),
Cidade varchar(50),
Estado varchar(20),
Cep varchar(10),
Foreign key (Cliente_ID) references Cliente(Cliente_ID)
);

Create table Categorias(
Categoria_ID int primary key,
Nome varchar(100),
Descricao text
);

create table Fornecedores(
Fornecedor_ID int primary key,
Nome varchar(100),
Contato varchar(100),
Telefone varchar(15),
Email varchar(100)
);

create table Produtos(
Produto_ID int primary key,
Nome varchar(100),
Descricao text,
Preco decimal(10,2),
Estoque int,
Categoria_ID int,
Fornecedor_ID int,
foreign key (Categoria_ID) references Categorias(Categoria_ID),
foreign key (Fornecedor_ID) references Fornecedores(Fornecedor_ID)
);

create table Status_Pedido(
Status_ID int primary key,
Descricao varchar(50)
);

create table Itens_Venda(
Item_ID int primary key,
Venda_ID int,
Produto_ID int,
Quantidade int,
Preco_Unitario decimal(10,2),
foreign key (Venda_ID) references Vendas(Venda_ID),
foreign key (Produto_ID) references Produtos(Produto_ID)
);

create table Carrinho(
Carrinho_ID int primary key,
Cliente_ID int,
Produto_ID int,
Quantidade_ID int,
foreign key (Cliente_ID) references Cliente(Cliente_ID),
foreign key (Produto_ID) references Produtos(Produto_ID)
);

create table Pagamentos(
Pagamento_ID int primary key,
Venda_ID int,
Data_Pagamento date,
Valor_Pago decimal(10,2),
Metodo_Pagamento varchar(50),
foreign key (Venda_ID) references Vendas(Venda_ID)
);

create table Vendas(
Venda_ID int primary key,
Cliente_ID int,
Data_Venda date,
Status_ID int,
foreign key (Cliente_ID) references Cliente(Cliente_ID),
foreign key (Status_ID) references Status_Pedido(Status_ID)
);
--                                                                     Resposta das perguntas

-- 1-SELECT COUNT(*) AS total_clientes FROM clientes;
-- 2-SELECT * FROM produtos WHERE estoque > 50;
-- 3-SELECT c.nome, COUNT(v.id_venda) AS total_vendas FROM clientes c LEFT JOIN vendas v ON c.cliente_id = v.cliente_id GROUP BY c.nome;
-- 4-SELECT * FROM clientes WHERE data_cadastro >= NOW() - INTERVAL 30 DAY;
-- 5-SELECT c.nome, e.cidade FROM clientes c JOIN enderecos e ON c.endereco_id = e.id;
-- 6-SELECT v.id_venda, p.nome AS nome_produto, pv.quantidade FROM vendas v JOIN produtos_vendidos pv ON v.id_venda = pv.id_venda JOIN produtos p ON pv.id_produto = p.id_produto;
-- 7-SELECT c.nome AS categoria, SUM(p.estoque) AS total_produtos FROM categorias c JOIN produtos p ON c.id_categoria = p.id_categoria GROUP BY c.nome;
-- 8-SELECT f.nome AS fornecedor, SUM(pv.quantidade) AS total_vendidos FROM fornecedores f JOIN produtos p ON f.id_fornecedor = p.id_fornecedor JOIN produtos_vendidos pv ON p.id_produto = pv.id_produto GROUP BY f.nome;
-- 9-SELECT DATE(data_venda) AS data, SUM(valor_total) AS total_vendas FROM vendas GROUP BY DATE(data_venda);
-- 10-SELECT DISTINCT c.nome JOIN pedidos p ON c.cliente_id = p.cliente_id WHERE p.status = 'Pendente';
-- 11-SELECT c.nome, p.nome AS nome_produto FROM clientes c JOIN carrinho ca ON c.cliente_id = ca.cliente_id JOIN produtos p ON ca.id_produto = p.id_produto;
-- 12-SELECT c.nome AS categoria, AVG(p.preco) AS preco_medio FROM categorias c JOIN produtos p ON c.id_categoria = p.id_categoria GROUP BY c.nome;
-- 13-SELECT SUM(pv.quantidade) AS total_produtos_vendidos FROM produtos_vendidos pv;
-- 14-SELECT c.nome FROM clientes c JOIN vendas v ON c.cliente_id = v.cliente_id GROUP BY c.nome HAVING COUNT(v.id_venda) > 3;
-- 15-SELECT p.status, SUM(v.valor_total) AS total_vendas FROM pedidos p JOIN vendas v ON p.id_pedido = v.id_pedido GROUP BY p.status;






