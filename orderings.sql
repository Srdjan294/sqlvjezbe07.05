use master;
go
drop database if exists orderings;
go
create database orderings;
go

use orderings;

create table persons(
ID int not null primary key identity(1,1),
LastName varchar(100) not null,
FirstName varchar(100) not null,
Age int
);

create table orders(
OrderID int not null primary key identity(1,1),
OrderNumber int not null,
PersonID int not null
);

alter table orders add foreign key (personID) references Persons(ID);