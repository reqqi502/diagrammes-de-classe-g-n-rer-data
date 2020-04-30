/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de création :  29/04/2020 04:48:35                      */
/*==============================================================*/


drop table if exists Article;

drop table if exists Client;

drop table if exists Commande;

/*==============================================================*/
/* Table : Article                                              */
/*==============================================================*/
create table Article
(
   RefArt               int not null,
   Nom                  varchar(254),
   Prix                 varchar(254),
   primary key (RefArt),
   key AK_Identifiant_1 (RefArt)
);

/*==============================================================*/
/* Table : Client                                               */
/*==============================================================*/
create table Client
(
   IdComm               float,
   NCin                 int,
   Nom                  varchar(254),
   Prenom               varchar(254),
   Tele                 int
);

/*==============================================================*/
/* Table : Commande                                             */
/*==============================================================*/
create table Commande
(
   IdComm               float not null,
   Art_RefArt           int not null,
   NCin                 int,
   RefArt               int,
   Quantite             int,
   primary key (IdComm),
   key AK_Identifiant_1 (IdComm),
   key AK_Identifiant_2 (IdComm)
);

alter table Client add constraint FK_Association2 foreign key (IdComm)
      references Commande (IdComm) on delete restrict on update restrict;

alter table Commande add constraint FK_Association1 foreign key (Art_RefArt)
      references Article (RefArt) on delete restrict on update restrict;

