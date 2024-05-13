use master;
go
drop database if exists webshop;
go
create database webshop;
go

use webshop;

create table proizvodi(
sifra int not null primary key identity(1,1),
naziv varchar(100) not null,
datumNabave datetime,
cijena decimal(18,2),
aktivan bit
);

create table racuni(
sifra int not null primary key identity(1,1),
datum datetime,
kupac int not null,
_status bit
);

create table kupci(
sifra int not null primary key identity(1,1),
ime varchar(100) not null,
prezime varchar(100) not null,
ulica varchar(200),
mjesto varchar(100)
);

create table stavke(
racun int not null,
proizvod int not null,
kolicina int,
cijena decimal(18,2)
);

alter table stavke add foreign key (proizvod) references proizvodi(sifra);
alter table stavke add foreign key (racun) references racuni(sifra);
alter table racuni add foreign key (kupac) references kupci(sifra);