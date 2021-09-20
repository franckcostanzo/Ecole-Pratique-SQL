create schema if not exists produits  ;
use produits;

create table if not exists `produits`.`fourniture`(
`aChanger` varChar(1),
`quantite` int(10) unsigned not null,
primary key (`aChanger`)
) engine = InnoDB;

create table if not exists `produits`.`fournisseur`(
`num_F` int not null auto_increment,
`nom` varChar(30) not null,
`ville` varChar(30) not null,
primary key (`num_F`)
)engine = InnoDB;

create table if not exists `produits`.`produit`(
`code_P` int not null auto_increment,
`libelle` varChar(50) not null,
`origine` varChar(50) not null,
`couleur` varChar(50) not null,
primary key (`code_P`)
) engine = InnoDB;

ALTER TABLE `produits`.`fourniture`
add constraint `FK_code_P`
foreign key (`code_P`) references `produits`.`produit`(`code_P`);
ALTER TABLE `produits`.`fourniture`
add constraint `FK_num_F`
foreign key (`num_F`) references `produits`.`fournisseur`(`num_F`);
ALTER TABLE `produits`.`fourniture`
DROP PRIMARY KEY;
ALTER TABLE `produits`.`fourniture`
add primary key (`num_F`,`code_P`);
