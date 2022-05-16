# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Korisnik\Documents\GitHub\zadaca11_5\Taksisluzba\taksisluzba.sql

drop database if exists taksisluzba;
create database taksisluzba;
use taksisluzba;

create table vozilo(
    sifra int not null primary key auto_increment,
    markavozila varchar(30),
    serijskibroj varchar(50) not null,
    vozac int,
    brojputnika int
);

create table vozac (
    sifra int not null primary key auto_increment,
    imeprezime varchar(30),
    serijskibroj varchar(50) not null,
    brojvoznji int,
    vozilo int
);

create table voznja(
    sifra int not null primary key auto_increment,
    udaljenost decimal(20,2),
    brojputnika varchar(20),
    vozac int,
    vozilo int
);

create table putnik(
    sifra int not null primary key auto_increment,
    adresa varchar(50),
    dob int,
    vozilo int
);

alter table vozilo add foreign key (vozac) references vozac(sifra);
alter table vozac add foreign key (vozilo) references vozilo (sifra);

alter table voznja add foreign key (vozilo) references vozilo(sifra);
alter table voznja add foreign key (vozac) references vozac(sifra);

alter table putnik add foreign key (vozilo) references vozilo(sifra);

# unos podataka

insert into vozilo (markavozila, serijskibroj)
values ('Opel Astra','123abc');

insert into vozac (serijskibroj)
values ('123456abc');

insert into voznja (udaljenost, brojputnika)
values (32.2, 2);

insert into putnik (dob)
values (38);