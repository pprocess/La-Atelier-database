--1--Testing CHECK constraint on employee table: 
-- This should fail due to pay_rate less than 10000
INSERT INTO employee (employee_id, first_name, last_name, phone_number, email, pay_rate)
VALUES (27, 'John', 'Doe', '555-123-4567', 'john.doe@example.com', 9000.00);

--2--Testing CHECK constraint on employee table: 
-- This should fail due to email already existing
INSERT INTO employee (employee_id, first_name, last_name, phone_number, email, pay_rate)
VALUES (27, 'John', 'Doe', '555-123-4567', 'emma.brown@example.com', 10000.00);

--3--Testing CHECK constraint on employee table: 
-- This should fail due to non-existing employee_id
INSERT INTO company (company_id, company_name, phone_number, email, employee_id)
VALUES (20, 'Test Company', '555-123-4567', 'test@example.com', 100);

--4--Testing FOREIGN KEY constraint on car table: 
-- This should fail due to non-existing insurance_no
INSERT INTO car (car_id, serial_no, car_model_name, number_plate, manufacturer, mfd, transmission, engine, tyres, rims, color, insurance_no, employee_id)
VALUES (20, 'SNTSTST', 'Test Car', 'TEST123', 'Test', '2024-04-01', 'Manual', '2.0L', 'Test Tyres', 'Test Rims', 'Black', 100, 17);

--5--Testing FOREIGN KEY constraint on reservation table: 
-- This should fail due to non-existing car_id
INSERT INTO reservation (reservation_id, date_of_rental, date_of_return, rent_rate, hours, total_rent, car_id)
VALUES (20, '2024-05-19', '2024-05-24', 140, 120, 16800, 100);

--6--Testing FOREIGN KEY constraint on renter table: 
-- This should fail due to non-existing reservation_id
INSERT INTO renter (renter_id, first_name, last_name, phone_number, card_id, email, driving_license, reservation_id)
VALUES (20, 'Test', 'Renter', '555-123-4567', 123456789, 'test.renter@example.com', 'DL67890', 100);

--7--Testing FOREIGN KEY constraint on payment table: 
-- This should fail due to non-existing reservation_id
INSERT INTO payment (payment_id, date_of_payment, paid, reservation_id)
VALUES (18, '2024-07-24', 13500, 100);

--8--Testing FOREIGN KEY constraint on contract table: 
-- This should fail due to non-existing reservation_id
INSERT INTO contract (contract_id, contract_type, contract_specification, reservation_id)
VALUES (15, 'Test Contract', 'Test Specification', 100);

--9--Testing UNIQUE constraint on insurance table:
-- This should fail due to duplicate insurance_no
INSERT INTO insurance (insurance_no, insurance_type, insurance_company, company_email, company_phone_no)
VALUES (10, 'Test Insurance', 'Test Company', 'test@example.com', '555-123-4567');

--10--Testing FOREIGN KEY constraint on car table for employee_id:
-- This should fail due to non-existing employee_id
INSERT INTO car (car_id, serial_no, car_model_name, number_plate, manufacturer, mfd, transmission, engine, tyres, rims, color, insurance_no, employee_id)
VALUES (21, 'SNTSTST', 'Test Car', 'TEST123', 'Test', '2024-04-01', 'Manual', '2.0L', 'Test Tyres', 'Test Rims', 'Black', 10, 100);

--11--Testing FOREIGN KEY constraint on renter table for card_id:
-- This should fail due to non-existing card_id
INSERT INTO renter (renter_id, first_name, last_name, phone_number, card_id, email, driving_license, reservation_id)
VALUES (21, 'Test', 'Renter', '555-123-4567', 999999999, 'test.renter@example.com', 'DL67890', 10);

--12--Testing NOT NULL constraint on various tables:
-- This should fail due to NULL value in required column 'rent_rate' in reservation table
INSERT INTO reservation (reservation_id, date_of_rental, date_of_return, hours, total_rent, car_id)
VALUES (20, '2024-05-19', '2024-05-24', NULL, 16800, 10);

--13--Testing CHECK constraint on payment table:
-- This should fail due to negative 'paid' value
INSERT INTO payment (payment_id, date_of_payment, paid, reservation_id)
VALUES (18, '2024-07-24', -500, 10);

--14--Testing UNIQUE constraint on company table for email:
-- This should fail due to duplicate email
INSERT INTO company (company_id, company_name, phone_number, email, employee_id)
VALUES (20, 'Test Company', '555-123-4567', 'info@opqent.com', 100);

--15--Testing FOREIGN KEY constraint on car table for insurance_no:
-- This should fail due to non-existing insurance_no
INSERT INTO car (car_id, serial_no, car_model_name, number_plate, manufacturer, mfd, transmission, engine, tyres, rims, color, insurance_no, employee_id)
VALUES (21, 'SNTSTST', 'Test Car', 'TEST123', 'Test', '2024-04-01', 'Manual', '2.0L', 'Test Tyres', 'Test Rims', 'Black', 100, 17);

--16--Testing FOREIGN KEY constraint on contract table for reservation_id:
-- This should fail due to non-existing reservation_id
INSERT INTO contract (contract_id, contract_type, contract_specification, reservation_id)
VALUES (15, 'Test Contract', 'Test Specification', 100);

--17--Testing NOT NULL constraint on renter table for driving_license:
-- This should fail due to NULL value in required column 'driving_license'
INSERT INTO renter (renter_id, first_name, last_name, phone_number, card_id, email, reservation_id)
VALUES (21, 'Test', 'Renter', '555-123-4567', 999999999, 'test.renter@example.com', 10);

--18--Testing NOT NULL constraint on reservation table for car_id
-- This should fail due to NULL value in required column 'car_id'
INSERT INTO reservation (reservation_id, date_of_rental, date_of_return, rent_rate, hours, total_rent, car_id)
VALUES (20, '2024-05-19', '2024-05-24', 140, 120, 16800, NULL);

--19--Testing CHECK constraint on employee table for pay_rate:
-- This should fail due to pay_rate less than 10000
INSERT INTO employee (employee_id, first_name, last_name, phone_number, email, pay_rate)
VALUES (27, 'John', 'Doe', '555-123-4567', 'john.doe@example.com', 9000.00);

--20--Testing FOREIGN KEY constraint on car table for employee_id:
-- This should fail due to non-existing employee_id
INSERT INTO car (car_id, serial_no, car_model_name, number_plate, manufacturer, mfd, transmission, engine, tyres, rims, color, insurance_no, employee_id)
VALUES (21, 'SNTSTST', 'Test Car', 'TEST123', 'Test', '2024-04-01', 'Manual', '2.0L', 'Test Tyres', 'Test Rims', 'Black', 10, 100);

--21--Testing FOREIGN KEY constraint on renter table for card_id:
-- This should fail due to non-existing card_id
INSERT INTO renter (renter_id, first_name, last_name, phone_number, card_id, email, driving_license, reservation_id)
VALUES (21, 'Test', 'Renter', '555-123-4567', 999999999, 'test.renter@example.com', 'DL67890', 10);

--22--Testing CHECK constraint on payment table for paid:
-- This should fail due to negative 'paid' value
INSERT INTO payment (payment_id, date_of_payment, paid, reservation_id)
VALUES (18, '2024-07-24', -500, 10);

--23--Testing CHECK constraint on reservation table for hours:
-- This should fail due to negative 'hours' value
INSERT INTO reservation (reservation_id, date_of_rental, date_of_return, rent_rate, hours, total_rent, car_id)
VALUES (20, '2024-05-19', '2024-05-24', 140, -120, 16800, 10);

--24--Testing CHECK constraint on insurance table for insurance_no:
-- This should fail due to duplicate insurance_no
INSERT INTO insurance (insurance_no, insurance_type, insurance_company, company_email, company_phone_no)
VALUES (10, 'Test Insurance', 'Test Company', 'test@example.com', '555-123-4567');

--25--Testing CHECK constraint on employee table for pay_rate:
-- This should fail due to pay_rate less than 10000
INSERT INTO employee (employee_id, first_name, last_name, phone_number, email, pay_rate)
VALUES (27, 'John', 'Doe', '555-123-4567', 'john.doe@example.com', 9000.00);