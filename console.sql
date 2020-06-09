create database Gin;
use gin;
create table  Customers(
    customer_number int not null primary key ,
    fullname nvarchar(365) ,
    address nvarchar(365),
    phone int(8) unique not null
);
create table Accounts(
    account_number int not null primary key ,
    foreign key (account_number) references Customers(customer_number),
    account_type char,
    date datetime,
    balance float
);
create table Transactions(
    tran_number int not null primary key ,
    account_number int not null unique,
    foreign key (account_number) references Accounts(account_number),
    date datetime,
    amounts float,
    descriptions nvarchar(365)
)