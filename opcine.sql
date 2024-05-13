use master;
go
drop database if exists opcine;
go
create database opcine;
go

use opcine;

create table nacelnici(
sifra int not null primary key identity(1,1),
ime varchar (50) not null,
prezime varchar(50) not null,
datumRodenja datetime
);