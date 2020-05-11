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

INSERT INTO entreprise VALUES (2,'Raddes','safi','azib dari');
INSERT INTO departement VALUES (4,'onep','reqqi','test');
INSERT INTO salarie VALUES (1,'khalid','onep','hdsbc',30,6000dh);


UPDATE entreprise SET location='safi' WHERE numE=2;
UPDATE departement SET nom='tsm' WHERE numD=4;
UPDATE salarie SET salaire='6000' WHERE 1;

DELETE FROM entreprise WHERE numE=2;
DELETE FROM departement WHERE numD=4;
DELETE FROM salarie WHERE numS=2;

