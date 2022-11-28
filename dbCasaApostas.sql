drop database dbCasaApostas;

create database dbCasaApostas;

	use dbCasaApostas;




create table tbusuarios(
codUsu int not null auto_increment,
nome varchar(100),
email varchar(100),
cpf char(14) not null unique,
primary key (codusu)
);

create table tbJogadores(
codjog int not null auto_increment,
nome varchar(100),
email varchar(100),
cpf char(14) not null unique,
primary key(codjog));

create table tbTimes(
codtime int not null auto_increment,
nome varchar(100),
localidade varchar(100),
serie char(1),
codjog int not null,
primary key (codtime),
foreign key(codjog) references tbjogadores(codjog)
);

create table tbapostas(
codapt int not null auto_increment,
codtime int not null,
data date,
hora time,
valor decimal(9,2) default 0 check (valor > 0),
codusu int not null,
primary key (codapt),
foreign key (codtime)references tbtimes(codtime),
foreign key (codusu) references tbusuarios(codusu)
);


--visualizar a estrutura das tablelas

desc tbusuarios;
desc tbjogadores;
desc tbtimes;
desc tbapostas;

--inserindo registros nas tabelas

insert into tbusuarios(nome,email,cpf)
	values('cleiton bravo','cleiton.bravo@gmail.com','500.200.400.40');

	insert into tbusuarios(nome,email,cpf)
	values('Henrique.Aquino','Henrique.Aquino@gmail.com','500.200.400.50');

insert into tbusuarios(nome,email,cpf)
	values('Kauan risos','Kauan.Risos@gmail.com','500.200.400.100');


insert into tbjogadores(nome,email,cpf)
	values ('lionel messi','messi.lionel@gmail.com', '123.450.800.20');

insert into tbjogadores(nome,email,cpf)
	values ('Cristiano Ronaldo','Cristiano.lionel@gmail.com', '123.410.800.20');

insert into tbjogadores(nome,email,cpf)
	values ('Richarlisson','Richarlisson.Hexa@gmail.com', '123.490.800.20');


insert into tbtimes(nome,localidade,serie,codjog)
	values ('Corinthians','São Paulo','A',1);


	insert into tbapostas(codtime,data,hora,valor,codusu)
		values (1,'2022-11-28','11:13:00',100,1);

insert into tbapostas(codtime,data,hora,valor,codusu)
		values (2,'2022-11-28','11:13:00',50,2);

		insert into tbapostas(codtime,data,hora,valor,codusu)
		values (3,'2022-11-28','11:13:00',30,3);

--visualizando registros das tabelas

select * from tbusuarios;
select *from tbjogadores;
select *from tbtimes;
select *from tbapostas;