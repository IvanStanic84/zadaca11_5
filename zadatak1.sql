# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Korisnik\Documents\GitHub\zadaca11_5\zadatak1.sql

drop database if exists zadatak1;
create database zadatak1;
use zadatak1;

create table zupan(
    ime varchar(50) not null,
    prezime varchar(50) not null
);

create table zupanija(
    naziv varchar(50) not null,
    zupan int not null
);

create table opcina(
    zupanija int not null,
    naziv varchar(50)
);

create table mjesto(
    opcina int not null,
    naziv varchar(50)
);