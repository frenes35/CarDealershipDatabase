drop database cardealership;

create database cardealership;

USE cardealership;



CREATE TABLE dealerships (
dealership_id int auto_increment PRIMARY KEY, 
name varchar (50) NOT NULL,
address varchar (50),
phone varchar (12),
sold boolean default false 
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
 
CREATE TABLE sales_contracts (
Contract_ID INT AUTO_INCREMENT PRIMARY KEY,
Date DATE NOT NULL,
CustomerName VARCHAR(100) NOT NULL,
CustomerEmail VARCHAR(100),
VehicleSold VARCHAR(17),
MonthlyPayment DECIMAL(10, 2),
FOREIGN KEY (VehicleSold) REFERENCES vehicles(Vin)
);


INSERT INTO dealerships (name, address, phone, sold)
VALUES 
('Highway Motors', '101 Highway Rd', '1234567890', FALSE),
('Urban Auto', '456 City Ave', '9876543210', TRUE),
('Luxury Drive', '789 Elite Blvd', '4567891230', FALSE),
('Budget Wheels', '333 Cheap St', '7890123456', FALSE),
('Eco Auto', '555 Green Ln', '2345678901', TRUE);

INSERT INTO vehicles (vin, year, make, model, vehicleType, color, odometer, price, vehiclesold)
VALUES
    ('1HGCM82633A987654', 2022, 'Toyota', 'Corolla', 'Sedan', 'Red', 20000, 22000.50, '1HGCM82633A123456'),
    ('2HGCM82633A876543', 2021, 'Ford', 'Focus', 'Hatchback', 'Blue', 30000, 18000.00, '1HGCM82633A123457'),
    ('3HGCM82633A765432', 2023, 'Honda', 'Accord', 'Sedan', 'Black', 15000, 27000.75, '1HGCM82633A123458'),
    ('4HGCM82633A654321', 2020, 'Nissan', 'Rogue', 'SUV', 'White', 40000, 24000.20, '1HGCM82633A123459'),
    ('5HGCM82633A543210', 2022, 'Tesla', 'Model Y', 'SUV', 'Silver', 10000, 55000.00, '1HGCM82633A123460');
    
INSERT INTO inventory (dealership_id, vin)
VALUES
    (1, '1HGCM82633A987654'),
    (1, '2HGCM82633A876543'),
    (2, '3HGCM82633A765432'),
    (3, '4HGCM82633A654321'),
    (4, '5HGCM82633A543210');
    
INSERT INTO sales_contracts (Date, CustomerName, CustomerEmail, VehicleSold, MonthlyPayment)
VALUES
('2024-12-01', 'Anna Green', 'anna.green@example.com', '1HGCM82633A987654', 400.00),
('2024-11-20', 'Michael Brown', 'michael.brown@example.com', '2HGCM82633A876543', 350.50),
('2024-11-15', 'Sarah White', 'sarah.white@example.com', '3HGCM82633A765432', 450.00),
('2024-11-22', 'John Black', 'john.black@example.com', '4HGCM82633A654321', 500.75),
('2024-12-05', 'Emily Blue', 'emily.blue@example.com', '5HGCM82633A543210', 600.00);
    
    
    
    

 
 
 