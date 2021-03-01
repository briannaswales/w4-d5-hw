CREATE TABLE Customer (
    customer_ID SERIAL,
    last_Name varchar(255),
    first_Name varchar(255),
    phone varchar(155)
);

INSERT INTO Customer (last_Name, first_Name, phone)
VALUES ('reedus', 'norman', '313-555-9234'),
('lincoln', 'abraham', '248-555-1234');

SELECT * 
FROM Customer;

CREATE TABLE Invoice (
    invoice_ID INT,
    customer_ID INT,
    salesperson_ID INT,
    sale_ID INT,
   	date_ TIMESTAMP
);

-- Just realized I had to create a foreign key when creating this table

INSERT INTO Invoice (salesperson_ID, sale_ID)
VALUES (123, 1),
(13, 122);

SELECT *
From Invoice;


CREATE TABLE Sale (
    sale_ID SERIAL,
    amount NUMERIC(8,2),
    loan_Sale NUMERIC(20,2),
    serial_Num INT
);

SELECT *
FROM Sale;

INSERT INTO Sale (amount, loan_Sale, serial_Num)
VALUES (299.99, 12, 12312423),
(99.99, 1, 12312423);

CREATE TABLE Vehicle (
	serial_Num SERIAL,
	make VARCHAR(25),
	model VARCHAR(25),
	price NUMERIC(10,2),
	year INT,
	used BOOLEAN,
	sold BOOLEAN
);

SELECT *
FROM Vehicle;

INSERT INTO Vehicle (make, model, price, year, used, sold)
VALUES ('car', 'yes', 12, 1991, true, false),
('car', 'yes', 12, 1991, true, false);

CREATE TABLE Sales_Persons (
    sales_person_ID SERIAL,
    last_Name varchar(255),
    first_Name varchar(255)
);

SELECT *
FROM Sales_Persons;

INSERT INTO Sales_Persons (last_Name, first_Name)
VALUES ('Henry', 'Henry'),
('Cena', 'John');

CREATE TABLE Services (
    service_ID SERIAL,
	amount NUMERIC(4,2),
	task VARCHAR(25),
	part_ID INT
);

INSERT INTO Services (amount, task, part_ID)
VALUES (32.00, 'Oil Change', 123),
(12.00, 'Tire Rotation', 123);

SELECT *
FROM Services;

CREATE TABLE Parts (
    part_ID SERIAL,
	name VARCHAR(25),
	price NUMERIC(5,2)
);

INSERT INTO Parts (name, price)
VALUES ('exhaust pipe', 12.30),
('bumper', 12.00);

SELECT * 
FROM Parts;

CREATE TABLE Mechanic_Services (
    mech_servicesID SERIAL,
	service_ID INT,
	mech_staffID INT
);
-- All Foreign Keys!!! OOPS

SELECT *
FROM Mechanic_Services;

CREATE TABLE Mechanic (
    mech_staff_id SERIAL,
	first_Name VARCHAR(25),
	last_Name VARCHAR(25)
);

INSERT INTO Mechanic (first_Name, last_Name)
VALUES ('Robert', 'Pattinson'),
('Mark', 'Zuckerburg');

SELECT * 
FROM Mechanic;


CREATE PROCEDURE HiredMechanic
	@first_Name nvarchar(25), 
	@last_Name nvarchar(25)
AS
BEGIN
INSERT INTO 
	Mechanic (first_Name, 
			  last_Name) 
VALUES 
	(@first_Name, 
	 @last_Name)
END;

EXEC HiredMechanic @first_Name = 'London', @last_Name = 'Bridges';
