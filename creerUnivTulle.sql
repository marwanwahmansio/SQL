drop database if exists UnivTulle ;
create database UnivTulle ;

use UnivTulle ;

create table Etudiant (
    ine varchar(20)  ,
	nom varchar(20) ,
    prenom varchar(20) ,
	primary key(ine)
) ;

create table Module (
	idModule integer  ,
	libelle varchar(20) ,
	primary key(idModule)
) ;

create table Suivre (
	ine varchar(20) ,
	idModule integer ,
	
	foreign key(ine) references Etudiant(ine) ,
    foreign key(idModule) references Module(idModule) 

	
) ;

create table Evaluation (
	numEval integer ,
	dateEval varchar(20) ,
	duree integer ,
    idModule integer ,
	
    primary key(numEval),
	foreign key(idModule) references Module(idModule) 

	
) ;

create table Passer (
	ine varchar(20) ,
	numEval integer ,
	note integer ,
    primary key (numEval,ine),
	foreign key(ine) references Etudiant(ine),
	foreign key(numEval) references Evaluation(numEval) 
) ;
