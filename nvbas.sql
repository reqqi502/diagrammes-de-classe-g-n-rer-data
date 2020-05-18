create database gestionh;
CREATE USER 'non-root'@'localhost' IDENTIFIED BY '123';
GRANT ALL PRIVILEGES ON * . * TO 'non-root'@'localhost';
create table Entreprise
(
   numE                 int not null,
   nom                  varchar(254),
   location             varchar(254),
   description          varchar(254),
   primary key (numE)
);

create table Departement
(
   numD                 int not null,
   numE                 int not null,
   nom                  varchar(254),
   chefD                varchar(254),
   description          varchar(254),
   primary key (numD),
    FOREIGN KEY (numE) REFERENCES entreprise(numE) on update cascade on delete cascade
);


create table Salarie
(
   numS                 int not null,
   numD                 int not null,
   nom                  varchar(254),
   prenom               varchar(254),
   age                  int,
   salaire              int,
   primary key (numS),
    FOREIGN KEY (numD) REFERENCES departement(numD) on update cascade on delete cascade
);

INSERT INTO entreprise VALUES (1,'youcode','safi','welcome');
INSERT INTO departement VALUES (1,1,'tri','akram','reqqi');
INSERT INTO salarie VALUES (1,1,'reqqi','akram',23,1000);


UPDATE entreprise SET location='agadir' WHERE numE=1;
UPDATE departement SET nom='tsm' WHERE numD=1;
UPDATE salarie SET salaire='5000' WHERE 1;

DELETE FROM entreprise WHERE numE=1;
DELETE FROM departement WHERE numD=1;
DELETE FROM salarie WHERE numS=1;



