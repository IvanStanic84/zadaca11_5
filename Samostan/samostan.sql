# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Korisnik\Documents\GitHub\zadaca11_5\Samostan\samostan.sql

drop database if exists samostan;
create database samostan;
use samostan;

create table svecenik(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    nadredjeni int not null
);

create table obaveze(
    svecenik int not null,
    posao int not null
);

create table posao(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    trajanje int not null
);

alter table svecenik add foreign key (nadredjeni) references svecenik(sifra);
alter table obaveze add foreign key (svecenik) references svecenik(sifra);
alter table obaveze add foreign key (posao) references posao(sifra);

insert into svecenik (ime,prezime,nadredjeni)
values ('Marko','Marić',1);
insert into svecenik (ime,prezime,nadredjeni)
values ('Ivo','Ivić',1);

insert into posao (naziv,trajanje)
values ('Priprema ručka',120);
insert into posao (naziv, trajanje)
values ('Košenje trave',60);

insert into obaveze (svecenik,posao)
values (2,1);
insert into obaveze (svecenik,posao)
values (1,1);
insert into obaveze (svecenik,posao)
values (2,2);
insert into obaveze (svecenik,posao)
values (1,2);