create database sitePessoal;

use sitePessoal;

select * from usuario;
select * from game;

create table usuario(
idUsuario int primary key auto_increment,
nome varchar(100),
email varchar(45),
senha varchar(12),
confirmacaoSenha varchar(12)
);

create table game(
idGame int primary key auto_increment, 
pontos int,
fkUsuario int,
foreign key(fkUsuario) references usuario(idUsuario)
);

INSERT INTO game (pontos, fkUsuario)VALUES
(10, 3);

select sum(pontos) as metrica from game where fkUsuario = 3 ;

select * from game;

SELECT usuario.*, sum(pontos) as metrica FROM usuario join game on fkUsuario = idUsuario WHERE email = 'vi' AND senha ='Vitor456';

select * from usuario where email = 'v' AND senha ='Vitor123';

