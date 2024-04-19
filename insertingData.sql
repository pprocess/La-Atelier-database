-- Populate insurance table
INSERT INTO insurance (insurance_no, insurance_type, insurance_company, company_email, company_phone_no)
VALUES
(10, 'Travel Insurance', 'JKL Insurance', 'travel@jklinsurance.com', '555-123-4567'),
(11, 'Pet Insurance', 'MNO Insurance', 'pet@mnoinsurance.com', '555-987-6543'),
(12, 'Renters Insurance', 'PQR Insurance', 'renters@pqinsurance.com', '555-222-3333'),
(13, 'Business Insurance', 'STU Insurance', 'business@stuinsurance.com', '555-444-5555'),
(14, 'Flood Insurance', 'VWX Insurance', 'flood@vwxinsurance.com', '555-666-7777'),
(15, 'Health Insurance', 'ABC Health Insurance', 'health@abcinsurance.com', '555-111-2222'),
(16, 'Life Insurance', 'XYZ Life Insurance', 'life@xyzinsurance.com', '555-888-9999'),
(17, 'Home Insurance', 'DEF Home Insurance', 'home@definsurance.com', '555-333-4444'),
(18, 'Car Insurance', 'GHI Car Insurance', 'car@ghiinsurance.com', '555-555-6666'),
(19, 'Property Insurance', 'LMN Property Insurance', 'property@lmninsurance.com', '555-777-8888');

-- Populate employee table
INSERT INTO employee (employee_id, first_name, last_name, phone_number, email, pay_rate)
VALUES
(17, 'Emma', 'Brown', '555-123-4567', 'emma.brown@example.com', 25000.00),
(18, 'Noah', 'Gonzalez', '555-234-5678', 'noah.gonzalez@example.com', 26000.00),
(19, 'Ava', 'Williams', '555-345-6789', 'ava.williams@example.com', 27000.00),
(20, 'Liam', 'Jones', '555-456-7890', 'liam.jones@example.com', 28000.00),
(21, 'Olivia', 'Garcia', '555-567-8901', 'olivia.garcia@example.com', 29000.00),
(22, 'William', 'Martinez', '555-678-9012', 'william.martinez@example.com', 30000.00),
(23, 'Sophia', 'Lee', '555-789-0123', 'sophia.lee@example.com', 31000.00),
(24, 'Mason', 'Hernandez', '555-890-1234', 'mason.hernandez@example.com', 32000.00),
(25, 'Amelia', 'Young', '555-901-2345', 'amelia.young@example.com', 33000.00),
(26, 'Logan', 'Scott', '555-012-3456', 'logan.scott@example.com', 34000.00);

-- Populate company table
INSERT INTO company (company_id, company_name, phone_number, email, employee_id)
VALUES
(10, 'OPQ Enterprises', '555-111-2222', 'info@opqent.com', 17),
(11, 'RST Industries', '555-222-3333', 'info@rstind.com', 18),
(12, 'UVW Group', '555-333-4444', 'info@uvwgroup.com', 19),
(13, 'XYZ Services', '555-444-5555', 'info@xyzsvc.com', 20),
(14, 'LMN Corporation', '555-555-6666', 'info@lmncorp.com', 21),
(15, 'ABC Corporation', '555-666-7777', 'info@abccorp.com', 22),
(16, 'DEF Enterprises', '555-777-8888', 'info@defent.com', 23),
(17, 'GHI Industries', '555-888-9999', 'info@ghiind.com', 24),
(18, 'JKL Group', '555-999-0000', 'info@jklgroup.com', 25),
(19, 'MNO Services', '555-000-1111', 'info@mnosvc.com', 26);

-- Populate car table
INSERT INTO car (car_id, serial_no, car_model_name, number_plate, manufacturer, mfd, transmission, engine, tyres, rims, color, insurance_no, employee_id)
VALUES
(10, 'SNLMNOP', 'Toyota Prius', 'PRI123', 'Toyota', '2023-06-01', 'Automatic', '1.8L', 'Bridgestone', 'Alloy', 'Green', 10, 17),
(11, 'SNSTUVW', 'Honda Accord', 'ACC456', 'Honda', '2023-07-01', 'Automatic', '2.0L', 'Michelin', 'Alloy', 'Silver', 11, 18),
(12, 'SNXYZAB', 'Ford Fusion', 'FUS789', 'Ford', '2023-08-01', 'Automatic', '2.5L', 'Pirelli', 'Alloy', 'White', 12, 19),
(13, 'SNCDEFG', 'Chevrolet Malibu', 'MAL012', 'Chevrolet', '2023-09-01', 'Automatic', '2.5L', 'Goodyear', 'Alloy', 'Black', 13, 20),
(14, 'SNHIJKL', 'Nissan Altima', 'ALT345', 'Nissan', '2023-10-01', 'Automatic', '2.5L', 'Firestone', 'Alloy', 'Red', 14, 21),
(15, 'SNMNOPE', 'Kia Optima', 'OPT678', 'Kia', '2023-11-01', 'Automatic', '2.4L', 'Bridgestone', 'Alloy', 'Blue', 15, 22),
(16, 'SNQRSTU', 'Hyundai Sonata', 'SON901', 'Hyundai', '2023-12-01', 'Automatic', '2.4L', 'Michelin', 'Alloy', 'Gray', 16, 23),
(17, 'SNEFGHI', 'Volkswagen Passat', 'PAS234', 'Volkswagen', '2024-01-01', 'Automatic', '2.0L', 'Goodyear', 'Alloy', 'Brown', 17, 24),
(18, 'SNJKLMN', 'Subaru Legacy', 'LEG567', 'Subaru', '2024-02-01', 'Automatic', '2.5L', 'Pirelli', 'Alloy', 'Gold', 18, 25),
(19, 'SNOPQRS', 'Mazda 6', 'MAZ890', 'Mazda', '2024-03-01', 'Automatic', '2.5L', 'Firestone', 'Alloy', 'Orange', 19, 26);

-- Populate reservation table
INSERT INTO reservation (reservation_id, date_of_rental, date_of_return, rent_rate, hours, total_rent, car_id)
VALUES
(10, '2024-05-19', '2024-05-24', 140, 120, 16800, 10),
(11, '2024-05-26', '2024-05-31', 150, 144, 21600, 11),
(12, '2024-06-02', '2024-06-07', 160, 168, 26880, 12),
(13, '2024-06-09', '2024-06-14', 170, 192, 32640, 13),
(14, '2024-06-16', '2024-06-21', 180, 216, 38880, 14),
(15, '2024-06-23', '2024-06-28', 190, 240, 45600, 15),
(16, '2024-06-30', '2024-07-05', 200, 264, 52800, 16),
(17, '2024-07-07', '2024-07-12', 210, 288, 60480, 17),
(18, '2024-07-14', '2024-07-19', 220, 312, 68640, 18),
(19, '2024-07-21', '2024-07-26', 230, 336, 77280, 19);

-- Populate renter table
INSERT INTO renter (renter_id, first_name, last_name, phone_number, card_id, email, driving_license, reservation_id)
VALUES
(10, 'Harper', 'Adams', '555-123-4567', 789012345, 'harper.adams@example.com', 'DL01234', 10),
(11, 'Benjamin', 'Hall', '555-234-5678', 890123456, 'benjamin.hall@example.com', 'DL12345', 11),
(12, 'Evelyn', 'Rivera', '555-345-6789', 901234567, 'evelyn.rivera@example.com', 'DL23456', 12),
(13, 'Jackson', 'Wright', '555-456-7890', 012345678, 'jackson.wright@example.com', 'DL34567', 13),
(14, 'Addison', 'Lopez', '555-567-8901', 123456789, 'addison.lopez@example.com', 'DL45678', 14),
(15, 'Hudson', 'Hill', '555-678-9012', 234567890, 'hudson.hill@example.com', 'DL56789', 15),
(16, 'Nora', 'Green', '555-789-0123', 345678901, 'nora.green@example.com', 'DL67890', 16),
(17, 'Scarlett', 'Baker', '555-890-1234', 456789012, 'scarlett.baker@example.com', 'DL78901', 17),
(18, 'Elijah', 'Young', '555-901-2345', 567890123, 'elijah.young@example.com', 'DL89012', 18),
(19, 'Maya', 'King', '555-012-3456', 678901234, 'maya.king@example.com', 'DL90123', 19);

-- Populate payment table
INSERT INTO payment (payment_id, date_of_payment, paid, reservation_id)
VALUES
(8, '2024-05-21', 4500, 10),
(9, '2024-05-29', 5500, 11),
(10, '2024-06-05', 6500, 12),
(11, '2024-06-12', 7500, 13),
(12, '2024-06-19', 8500, 14),
(13, '2024-06-26', 9500, 15),
(14, '2024-07-03', 10500, 16),
(15, '2024-07-10', 11500, 17),
(16, '2024-07-17', 12500, 18),
(17, '2024-07-24', 13500, 19);

-- Populate contract table
INSERT INTO contract (contract_id, contract_type, contract_specification, reservation_id)
VALUES
(5, 'Rental Agreement', 'Standard Rental Terms', 10),
(6, 'Lease Contract', '6-month Lease Agreement', 11),
(7, 'Rental Agreement', 'Standard Rental Terms', 12),
(8, 'Lease Contract', '6-month Lease Agreement', 13),
(9, 'Rental Agreement', 'Standard Rental Terms', 14),
(10, 'Lease Contract', '6-month Lease Agreement', 15),
(11, 'Rental Agreement', 'Standard Rental Terms', 16),
(12, 'Lease Contract', '6-month Lease Agreement', 17),
(13, 'Rental Agreement', 'Standard Rental Terms', 18),
(14, 'Lease Contract', '6-month Lease Agreement', 19);
