-- creation du schéma ( = base de donnée)
create schema boutique;
-- j'utilise le schéma créé
use boutique;

-- création d'une table client
create table client(
idClient int not null auto_increment,
primary key (idClient),
nom varChar(255) not null default 'doe',
prenom varChar(255) not null default 'john'
)engine = InnoDB;


