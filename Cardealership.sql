drop database cardealership ;

create database cardealership;

USE cardealership;



CREATE TABLE dealerships (
dealership_id int auto_increment PRIMARY KEY, 
name varchar (50) NOT NULL,
address varchar (50),
phone varchar (12)
);

CREATE TABLE vehicles (
vin varchar(17) primary key,
year int NOT NULL,
 make varchar(50) NOT null,
 model varchar(50) NOT NULL,
 vehicleType varchar(50) NOT NULL,
 color varchar (50),
 odometer int NOT NULL,
 price double NOT NULL,
 vehiclesold varchar(17) NOT NULL
 );
 
 CREATE TABLE inventory (
 dealership_id int,
 vin varchar(17),
 primary key (dealership_id, vin),
 foreign key (dealership_id) references DEALERSHIPS(DEALERSHIP_ID),
 foreign key(vin) references vehicles(vin)
 );
 
 
 
 