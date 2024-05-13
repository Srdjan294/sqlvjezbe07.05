use master;
go
drop database if exists samostan;
go
create database samostan;
go

use samostan;

create table svecenici(
sifra int not null primary key identity(1,1),
ime varchar(100) not null,
prezime varchar(100) not null,
nadredeni int not null
);

alter table svecenici add foreign key (nadredeni) references svecenici(sifra);