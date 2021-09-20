-- creation du schéma ( = base de donnée)
create schema cinema;
-- j'utilise le schéma créé
use cinema;

-- création d'une table client
create table client(
idClient int not null auto_increment,
primary key (idClient),
nom varChar(255) not null default 'doe',
prenom varChar(255) not null default 'john'
)engine = InnoDB;
