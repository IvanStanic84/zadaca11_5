# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Korisnik\Documents\GitHub\zadaca11_5\Opg\opg.sql

drop database if exists opg;
create database opg;
use opg;

create table opg(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    oib int not null,
    adresa varchar(50) not null,
    djelatnik int not null,
    proizvod int not null
);

create table djelatnik(
    sifra int not null primary key auto_increment,
    ime varchar(20) not null,
    prezime varchar(20) not null,
    oib char(11) not null,
    kontakt varchar(50),
    iban varchar(30)
);

create table proizvod(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    cijena decimal(18,2) not null,
    kolicina decimal(18,2) not null
);


alter table opg add foreign key (proizvod) references proizvod(sifra);
alter table opg add foreign key (djelatnik) references djelatnik(sifra);
