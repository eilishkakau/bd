create database loja_cem;
use loja_cem;
create table cliente(
id_cliente int not null auto_increment,
nome varchar(100),
sexo char(1),
cpf varchar(15),
data_nasc date,
primary key(id_cliente)
);
desc cliente;

create table endereco(
id_endereco int not null auto_increment,
cod_cliente int,
rua varchar(50),
bairro varchar(50),
cidade varchar(50),
estado varchar(30),
cep varchar(15),
primary key(id_endereco)
);
desc endereco;

create table telefone(
id_telefone int not null auto_increment,
cod_cliente int,
fone1 varchar(15),
fone2 varchar(15),
primary key(id_telefone)
);
desc telefone;

create table venda(
id_venda int not null auto_increment,
cod_cliente int,
cod_produto int,
cod_transporte int,
valor float,
quantidade varchar(100),
data_compra date,
primary key(id_venda)
);
desc venda;

create table produto(
id_produto int not null auto_increment,
nome varchar(100),
modelo varchar(100),
primary key(id_produto)
);
desc produto;

create table transporte(
id_transporte int not null auto_increment,
nome varchar(100),
cnpj varchar(15),
primary key(id_transporte)
);
desc transporte;

alter table endereco add foreign key (cod_cliente) references
cliente (id_cliente);

alter table telefone add foreign key (cod_cliente) references
cliente (id_cliente);

alter table venda add foreign key (cod_cliente) references
cliente (id_cliente);

alter table venda add foreign key (cod_produto) references
produto (id_produto);

alter table venda add foreign key (cod_transporte) references
transporte (id_transporte);

insert into cliente (nome, sexo, cpf, data_nasc) values
('Ana Clara','F','426.956.486-57','2007-06-06');

insert into cliente (nome, sexo, cpf, data_nasc) values
('Gabriel Espíndola','M','3467.137.976-54','2000-07-11');

insert into cliente (nome, sexo, cpf, data_nasc) values
('João Espíndola','M','247.174.027-67','1942-04-02');

insert into cliente (nome, sexo, cpf, data_nasc) values
('Rosa Maria','F','135.087.457-78','1945-12-18');

select * from cliente;

insert into endereco (cod_cliente, rua, bairro, cidade, estado, cep) values
('3','Alceu Sebastião','Parque São João','Paranaguá','Paraná','54185-257');

insert into endereco (cod_cliente, rua, bairro, cidade, estado, cep) values
('2','Alzira Dutra','Parque São João','Paranaguá','Paraná','98676-125');

insert into endereco (cod_cliente, rua, bairro, cidade, estado, cep) values
('4','Arthur Bernardes','Palmital','Paranaguá','Paraná','92403-782');

insert into endereco (cod_cliente, rua, bairro, cidade, estado, cep) values
('2','Odilon Mader','Vila Cruziro','Paranaguá','Paraná','47928-984');

insert into endereco (cod_cliente, rua, bairro, cidade, estado, cep) values
('1',' Anita Ribeiro Fontes','Cominese','Paranaguá','Paraná','52591-245');

select * from endereco;

insert into telefone (cod_cliente, fone1, fone2) values
('4','41 3464-1253','41 98475-2842');

insert into telefone (cod_cliente, fone1, fone2) values
('3','41 6728-2685','41 99416-2346');

insert into telefone (cod_cliente, fone1, fone2) values
('1','41 3457-8654','41 98474-2247');

insert into telefone (cod_cliente, fone1, fone2) values
('2','41 3445-1236','41 95678-3646');

insert into telefone (cod_cliente, fone1, fone2) values
('4','41 3423-8432','41 99624-2772');

select * from telefone;

insert into produto (nome, modelo) values
('Lego','Brinquedo');

insert into produto (nome, modelo) values
('Quebra-cabeça','Brinquedo');

select * from produto;

insert into transporte (nome, cnpj) values
('Transporte do Cliton','46926047672374');

insert into transporte (nome, cnpj) values
('Transporte do Cliton','58274592492186');

select * from transporte;

insert into venda (cod_cliente, cod_produto, cod_transporte, valor, quantidade, data_compra) values
('3','1','2','399.99','2','2024-09-06');

insert into venda (cod_cliente, cod_produto, cod_transporte, valor, quantidade, data_compra) values
('4','2','1','599.99','5','2024-08-05');

select * from venda;