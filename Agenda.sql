/**
 *Projeto 1: Agenda de contatos
 *@autor Elias Leal
 */
  -- Listar bancos disponiveis no servidor

show databases;
-- Criar um novo banco de dados
create database dbagenda1;
 -- Excluir banco de dados
drop database teste1;
 -- Selecionar o banco de dados;
 use dbagenda1;
  /* Tabelas */
-- Criar uma nova tabela
  
  /*
  int (tipo de dados: números inteiros)
  primary key (chave primária)
  auto_increment (numeração automatica
  varchar (tipo de dados: String de caracteres)
  not null (campo com preenchimento obrigatorio)
  */
create table contatos(
	idcon int primary key auto_increment,
    nome varchar(50) not null,
	fone varchar(15) not null,
    email varchar(50)
);

 -- Listar tabela do banco de dados 
 show tables;
 
 -- Descrever a estrutura da tabela
 describe contatos;
 
 -- Excluir uma tabela
 drop table contatos;
 
 /* CRUD (Cread Read Update Delete) */
 
 /*CRUD Creade */
 -- Inserir um novo contato  
insert into contatos (nome,fone,email)
values('Bill Gates','978556595','bill@hotmail.com');

insert into contatos (nome,fone,email)
values('Elias Leal','958868965','Eliasleal15@hotmail.com');

insert into contatos (nome,fone,email)
values('Leonardo','958544541','Leonardomane@hotmail.com');

insert into contatos (nome,fone,email)
values('Ricardo','9545816262','Rircadinho@hotmail.com');

insert into contatos (nome,fone,email)
values('Beuga','(11)97854512','Beugacom_u_@hotmail.com');

insert into contatos (nome,fone,email)
values('Neymar Junior','(11)96655-2225','Neyday@hotmail.com');

 /*CRUD Read */
 -- Listar todos contatos da tabela
 select * from contatos;
 
 -- Listar os contatos por ordem alfabetica
 select * from contatos order by nome;
 
 -- Listar campos especificos da tabela
 select nome,fone from contatos order by nome;
 
 -- Criar um apelido para os campos da tabela
 select nome as Contato, fone as Telefone,
 email as Email from contatos order by nome;
 
 -- Selecionar um contato especifico 
select * from contatos where nome= 'Elias Leal';
select * from contatos where idcon= '1';

/* CRUD update */
update contatos set nome='Elias Leal', fone='(11)97013-5702', 
email='eliasleal15@hotmail.com' where idcon='2';
update contatos set fone='99955-7664' where idcon=1;

/* CRUD delete */
delete from contatos where idcon='1';
