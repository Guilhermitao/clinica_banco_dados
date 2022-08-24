create database clinica;
use clinica;
 
select * from paciente;
 
 create table paciente(
nome_paciente varchar(40) not null,
rg_paciente char(9) unique,
peso_paciente double,
tipo_sangue_paciente varchar(3),
 data_nasci_paciente date not null,
cpf_paciente int(11) not null unique,
 endereço varchar(35) not null,
 cep_paciente char(8) not null unique,
 bairro_paciente varchar(35),
 cidade_paciente varchar(35),
constraint check_rg check (length(rg_paciente)=9),
constraint check_cpf check (length(cpf_paciente)=11),
constraint check_cep check (length(cep_paciente)=8),
 primary key (cpf_paciente)
 );
 
 alter table paciente change endereço ende_paciente varchar(35);
 /**/
 alter table paciente modify column cpf_paciente bigint;

alter table paciente add column altura_paciente double;

insert into paciente(nome_paciente,peso_paciente,
tipo_sangue_paciente,data_nasci_paciente,ende_paciente,
bairro_paciente,cidade_paciente,rg_paciente,
cpf_paciente,cep_paciente)
values("Fulano fulano","80.55","ab","2000/05/12",
"rua:maconhadapaz","bairro:crackurosloko",
"cidade:quintodosinferno","101010101","10010010010","01010101");

insert into paciente(nome_paciente,peso_paciente,
tipo_sangue_paciente,data_nasci_paciente,ende_paciente,
bairro_paciente,cidade_paciente,rg_paciente,
cpf_paciente,cep_paciente)
values("Biba bibao","300.55","bb","2000/05/12",
"rua:maconhadapaz","bairro:crackurosloko",
"cidade:quintodosinferno","202020202","20020020020","02020202");

insert into paciente(nome_paciente,peso_paciente,
tipo_sangue_paciente,data_nasci_paciente,ende_paciente,
bairro_paciente,cidade_paciente,rg_paciente,
cpf_paciente,cep_paciente)/**/
values("Guilhermito Fodão","73.55","ab","2002/10/29",
"rua:guarani","bairro:serraria",
"cidade:diadema","303030303","30030030030","03030303");

insert into paciente(nome_paciente,peso_paciente,
tipo_sangue_paciente,data_nasci_paciente,ende_paciente,
bairro_paciente,cidade_paciente,rg_paciente,
cpf_paciente,cep_paciente,altura_paciente)
values("Rei dos Corno","10.55","ab","1000/05/12",
"rua:maconhadapaz","bairro:crackudoslokoxifrudo",
"cidade:quintodosinferno","404040404","40040040040","04040404","10.90");

insert into paciente(nome_paciente,peso_paciente,
tipo_sangue_paciente,data_nasci_paciente,ende_paciente,
bairro_paciente,cidade_paciente,rg_paciente,
cpf_paciente,cep_paciente,altura_paciente)
values("MC zika Modernão","10.55","ab","3999/05/12",
"rua:maconhadapaz","bairro:crackudosloko",
"cidade:quintodosinferno","505050505","50050050050","05050505","1.90");

insert into paciente(nome_paciente,peso_paciente,
tipo_sangue_paciente,data_nasci_paciente,ende_paciente,
bairro_paciente,cidade_paciente,rg_paciente,
cpf_paciente,cep_paciente,altura_paciente)
values("Chimpanzee Relmatico","10.55","ab","1900/05/12",
"rua:professorlinguiça","bairro:bairrodochaves",
"cidade:MeuSadruga","606060606","60060060060","06060606","1.70");

select concat (nome_paciente," ",data_nasci_paciente) from paciente
where cpf_paciente = 10010010010;

create function data_nome (nome varchar(45), 
data_nasci date)
returns varchar(50)
return concat ("Paciente: ",nome," // ",data_nasci);
select data_nome (nome_paciente,data_nasci_paciente)from
paciente;

drop function data_nome; 


















































