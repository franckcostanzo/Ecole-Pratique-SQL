create schema if not exists notes;
use notes;

create table if not exists notes.etudiant(
NEtudiant int(11) not null auto_increment,
Nom varChar(30) default 'Doe',
Prenom varChar(30) default 'John',
DateN date,
Groupe int(11) not null,
primary key (NEtudiant)
) engine = InnoDB;

create table if not exists notes.matiere(
CodeMat int(11) not null auto_increment,
LibelleMat varChar(30),
CoeffMat int(11) default 1,
primary key (CodeMat)
) engine = InnoDB;

create table if not exists notes.evaluer(
DateE date,
Note decimal(2,1) not null,
NEtudiant int(11) not null,
CodeMAt int(11) not null,
primary key (NEtudiant, CodeMat),
constraint NEtudiant
foreign key (NEtudiant) references notes.etudiant(NEtudiant),
constraint CodeMat
foreign key (CodeMat) references notes.matiere(CodeMat)
) engine = InnoDB;