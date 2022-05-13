# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Korisnik\Documents\GitHub\zadaca11_5\Firma\firma.sql

drop database if exists firma;
create database firma;
use firma;

create table projekt(
    sifra int not null primary key auto_increment, 
    naziv varchar(50) not null,
    cijena decimal(18,2) not null
);

create table programer(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    datumrodjenja datetime not null,
    placa decimal(18,2) not null
);

create table sudjeluje(
    sifra int not null primary key auto_increment,
    projekt int not null,
    programer int not null,
    datumpocetka datetime not null,
    datumkraja datetime not null
);


alter table sudjeluje add foreign key (projekt) references projekt(sifra);
alter table sudjeluje add foreign key (programer) references programer(sifra);


insert into projekt (naziv, cijena)
values ('elpros', 2000000);

insert into programer (ime, prezime, datumrodjenja, placa)
values ('Ivan', 'Stanić', '1984-06-28 12:48:37', 15000);

insert into programer (ime, prezime, datumrodjenja, placa)
values ('Vedran', 'Kasapović', '1983-09-12', 13000);

insert into sudjeluje (projekt,programer,datumpocetka,datumkraja)
values (1,1,'2022-05-11','2022-05-11');

insert into sudjeluje (projekt,programer,datumpocetka,datumkraja)
values (1,2,'2022-05-11','2022-05-11');