create database laAtelier;
use laAtelier;

-- Create table insurance
create table insurance(
	insurance_no INT PRIMARY KEY ,
    insurance_type VARCHAR(50) NOT NULL ,
    insurance_company VARCHAR(150) NOT NULL,
    company_email VARCHAR(100) NOT NULL unique ,
    company_phone_no VARCHAR(20)  NOT NULL
);

-- Create employee table
CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone_number VARCHAR(20) UNIQUE,
    email VARCHAR(100) UNIQUE,
    pay_rate DECIMAL(10,2)
);
ALTER TABLE employee
ADD CONSTRAINT check_pay_rate CHECK (pay_rate > 10000);

-- Create company table
CREATE TABLE company (
    company_id INT PRIMARY KEY,
    company_name VARCHAR(50) NOT NULL,
    phone_number VARCHAR(20) UNIQUE not null,
    email VARCHAR(100) UNIQUE not null,
    employee_id INT UNIQUE 
);
ALTER TABLE company
ADD CONSTRAINT fk_employee_id FOREIGN KEY (employee_id) REFERENCES employee(employee_id);

-- Create car table
CREATE TABLE car (
    car_id INT PRIMARY KEY,
    serial_no VARCHAR(50) NOT NULL,
    car_model_name VARCHAR(50) NOT NULL,
    number_plate VARCHAR(20) UNIQUE not null,
    manufacturer VARCHAR(50),
    mfd DATE,
    transmission VARCHAR(50),
    engine VARCHAR(50),
    tyres VARCHAR(50),
    rims VARCHAR(50),
    color VARCHAR(50),
    insurance_no INT not null,  
    employee_id INT not null
);

ALTER TABLE car
ADD CONSTRAINT fk_insurance_no FOREIGN KEY (insurance_no) REFERENCES insurance(insurance_no);

ALTER TABLE car
ADD CONSTRAINT fk_owner_id FOREIGN KEY (employee_id) REFERENCES employee(employee_id);

-- Create the reservation table
create TABLE reservation (
  reservation_id INT PRIMARY KEY,
  date_of_rental VARCHAR(50) NOT NULL,
  date_of_return VARCHAR(50) NOT NULL,
  rent_rate int NOT NULL,
  hours INT not null,
  total_rent int not null,
  car_id int not null
);
alter table reservation
add constraint fk_car_id foreign key (car_id) references car(car_id)

-- Create renter table
CREATE TABLE renter (
  renter_id INT PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  phone_number VARCHAR(20) UNIQUE NOT NULL,
  card_id INT,
  email VARCHAR(100) UNIQUE,
  driving_license VARCHAR(20) UNIQUE,
  reservation_id INT NOT NULL
);
Alter table renter
add constraint fk_reservation_id foreign key (reservation_id) references reservation(reservation_id)

-- Create payment table
CREATE TABLE payment (
    payment_id INT PRIMARY KEY,
    date_of_payment date,
    paid int NOT NULL,
    reservation_id INT
);
ALTER TABLE payment
ADD CONSTRAINT fk_payment_reservation
FOREIGN KEY (reservation_id) REFERENCES reservation(reservation_id);

-- create table contract
CREATE TABLE contract (
    contract_id INT PRIMARY KEY,
    contract_type VARCHAR(50) NOT NULL,
    contract_specification VARCHAR(150) NOT NULL,
    reservation_id INT NOT NULL
);
ALTER TABLE contract
ADD CONSTRAINT fk_contract_reservation FOREIGN KEY (reservation_id) REFERENCES reservation(reservation_id);

-- create schema table
--View all tables in the current database
SELECT * FROM INFORMATION_SCHEMA.TABLES;

-- View columns
SELECT * FROM INFORMATION_SCHEMA.COLUMNS

-- View foreign key constraints
SELECT * FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE