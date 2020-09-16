create database projetopi;
use projetopi;

create table DadosAcesso(
IdEmpresa int primary key auto_increment,
Nome varchar(60),
Email varchar(70),
Endereco varchar(70),
TelefoneFixo int,
TelefoneComercial int,
TelefoneCelular bigint,
CPF bigint,
Senha varchar(10)
) auto_increment=100;
select*from DadosAcesso;
insert into DadosAcesso(Nome,Email,Endereco,TelefoneFixo,TelefoneComercial,TelefoneCelular,CPF,Senha) values
('blabla','blabla@hotmail.com','R.zé do leite','1128963456','1135642000','11985613225','43128945610','bla7563');
select*from DadosAcesso;
update DadosAcesso set Nome='blebleble' where IdEmpresa=100;
use projetopi;
create table DadosEmpresa(
CNPJ bigint primary key,
nomeEmpresa varchar(50),
Estado varchar(30),
Cidade varchar(30),
Rua varchar(100),
Numero int,
Bairro varchar(100),
CEP bigint,
ComplementoObservacao varchar(300),
fkEmpresa int,
foreign key (fkEmpresa) references DadosAcesso(IdEmpresa)
);
insert into DadosEmpresa values
(03020853000183, 'BandTest','São Paulo','São Paulo','Haddock Caramelo','77','Paulista','08000160','Starbucks', 100);
select * from DadosEmpresa, DadosAcesso where idEmpresa= fkEmpresa;
select * from DadosAcesso;
select * from DadosEmpresa;
select * from DadosAcesso;




