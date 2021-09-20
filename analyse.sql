create schema if not exists analyse;
use analyse;

create table if not exists `analyse`.`client`(
codeClient varChar(30),
nomClient varChar(30),
cpClient varChar(30),
rueClient varChar(30),
villeClient varChar(30),
telClient varChar(30),
primary key (codeClient)
) engine = InnoDB;

create table if not exists `analyse`.`echantillon`(
codeEchantillon int(11) not null auto_increment,
dateEntree date,
codeClient varChar(30),
constraint FK_codeClient
foreign key (codeClient) references `analyse`.`client`(codeClient),
primary key (codeEchantillon)
) engine = InnoDB;

create table if not exists `analyse`.`realiser`(
codeEchantillon int(11) not null,
RefTypeAnalyse varChar(30) not null,
dateRealisation date,
constraint codeEchantillon
foreign key (codeEchantillon) references `analyse`.`echantillon`(codeEchantillon),
primary key (RefTypeAnalyse)
) engine = InnoDB;

create table if not exists `analyse`.`type`(
RefTypeAnalyse varChar(30) not null,
designation varChar(50),
typeAnalyse varchar(50),
prixTypeAnalyse decimal(8,6),
constraint RefTypeAnalyse
foreign key (RefTypeAnalyse) references `analyse`.`realiser`(RefTypeAnalyse),
primary key (RefTypeAnalyse)
) engine = InnoDB;

ALTER TABLE `analyse`.`client`
modify cpClient varChar(30) not null;
ALTER TABLE `analyse`.`client`
modify villeClient varchar(30) not null;
ALTER TABLE `analyse`.`client`
modify nomClient varchar(30) Default 'Anonyme';
ALTER TABLE `analyse`.`client`
DROP rueClient;