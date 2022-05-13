# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Korisnik\Documents\GitHub\zadaca11_5\zadatak1.sql

drop database if exists zadatak1;
create database zadatak1;
use zadatak1;

create table zupan(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null
);

create table zupanija(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    zupan int not null
);

create table opcina(
    sifra int not null primary key auto_increment,
    zupanija int not null,8
    naziv varchar(50)
);

create table mjesto(
    opcina int not null,
    naziv varchar(50)
);

alter table zupanija add foreign key (zupan) references zupan(sifra);
alter table opcina add foreign key (zupanija) references zupanija(sifra);
alter table mjesto add foreign key (opcina) references opcina(sifra);

insert into zupan (ime, prezime)
values ('Pero', 'Perić');

insert into zupan (ime, prezime)
values ('Marko', 'Marić');

insert into zupan (ime, prezime)
values ('Ivo', 'Ivić');

insert into zupanija (naziv, zupan)
values ('Osječko-baranjska', 1);

insert into zupanija (naziv, zupan)
values ('Vukovarsko-srijemska', 2);

insert into zupanija (naziv, zupan)
values ('Splitsko-dalmatinska', 3);

insert into opcina (zupanija, naziv)
values (1, 'Valpovo');

insert into opcina (zupanija, naziv)
values (1, 'Bizovac');

insert into opcina (zupanija, naziv)
values (2, 'Bogdanovci');

insert into opcina (zupanija, naziv)
values (2, 'Drenovci');

insert into opcina (zupanija, naziv)
values (3, 'Otok');

insert into opcina (zupanija, naziv)
values (3, 'Dugopolje');

insert into mjesto (opcina, naziv)
values (1, 'Ivanovci');

insert into mjesto (opcina, naziv)
values (1, 'Šag');

insert into mjesto (opcina, naziv)
values (2, 'Cret');

insert into mjesto (opcina, naziv)
values (2, 'Brođanci');

insert into mjesto (opcina, naziv)
values (3, 'Svinjarevci');

insert into mjesto (opcina, naziv)
values (3, 'Petrovci');

insert into mjesto (opcina, naziv)
values (4, 'Đurići');

insert into mjesto (opcina, naziv)
values (4, 'Račinovci');

insert into mjesto (opcina, naziv)
values (5, 'Gala');

insert into mjesto (opcina, naziv)
values (5, 'Korita');

insert into mjesto (opcina, naziv)
values (6, 'Koprivno');

insert into mjesto (opcina, naziv)
values (6, 'Liska');


