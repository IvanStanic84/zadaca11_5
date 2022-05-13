# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Korisnik\Documents\GitHub\zadaca11_5\Zupanije\zupanije.sql

drop database if exists zupanije;
create database zupanije;
use zupanije;

create table zupanija(
    sifra int not null primary key auto_increment, 
    naziv varchar(50) not null,
    zupan varchar(50)
);

create table opcina(
    sifra int not null primary key auto_increment, 
    zupanija int not null,
    naziv varchar(50) not null
);

alter table opcina add foreign key (zupanija) references zupanija (sifra);
insert into zupanija (naziv)
values ('Osječko -baranjska' );

insert into zupanija(naziv)
values ('Dubrovačko-Neretvanska');
insert into zupanija(naziv)
values ('Grad Zagreb');

insert into opcina (naziv, zupanija)
values ('Osijek',1);

insert into opcina (naziv, zupanija)
values ('Valpovo',1);





