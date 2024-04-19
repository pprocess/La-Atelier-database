--1-- Query to calculate the total rent paid for the month of June
SELECT SUM(total_rent) AS total_rent_paid_in_june -- Calculate the sum of total_rent column and alias it as total_rent_paid_in_june
FROM reservation -- Select data from the reservation table
WHERE MONTH(date_of_rental) = 6; -- Filter the reservations for the month of June
--====================================================================
-- 2--Query to calculate the average rent rate across all reservations
SELECT AVG(rent_rate) AS average_rent_rate -- Calculate the average of rent_rate column and alias it as average_rent_rate
FROM reservation; -- Select data from the reservation table
--====================================================================
--3-- Query to select all reservations and order them by date of rental
SELECT * FROM reservation ORDER BY date_of_rental;
--=========================================================================
-- 4--Query to select reservations with a rent rate greater than 150
SELECT * FROM reservation WHERE rent_rate > 150;
--===============================================================================
--5-- Create a view to select silver cars from the car table
CREATE VIEW SilverCarsView AS
SELECT car_id, serial_no, car_model_name, number_plate 
FROM car
WHERE color = 'Silver';

-- Query to select data from the SilverCarsView
SELECT * FROM SilverCarsView;
--==============================================================================
--6-- Query to select the date of rental, total rent, and number of reservations for each date
SELECT date_of_rental, SUM(total_rent) AS total_rent, COUNT(reservation_id) AS reservation_count
FROM reservation
GROUP BY date_of_rental;
--=============================================================================
--7-- Query to select renter email and phone number for reservations where the payment amount is greater than 10000
SELECT renter.email, renter.phone_number
FROM renter
JOIN payment ON renter.reservation_id = payment.reservation_id
WHERE payment.paid > 10000;
--=============================================================================
--8-- Query to select car details for reservations made by a renter named 'Emma'
SELECT c.*
FROM car c
JOIN reservation res ON c.car_id = res.car_id
JOIN renter r ON r.reservation_id = res.reservation_id
WHERE r.first_name = 'Jackson';
--===========================================================================
--9-- Query to select the  employees with the highest pay rate
SELECT first_name, last_name, pay_rate
FROM employee
WHERE pay_rate = (SELECT MAX(pay_rate) FROM employee);
--========================================================================
-- 10--Query to view to combine rental information for cars rented in May and July
-- This includes car ID, car model, car number plate, renter ID, renter name, and rental date
SELECT car.car_id, car.car_model_name, car.number_plate, renter.renter_id, CONCAT(renter.first_name, ' ', renter.last_name) AS renter_name, reservation.date_of_rental
FROM reservation
JOIN car ON reservation.car_id = car.car_id
JOIN renter ON reservation.reservation_id = renter.reservation_id
WHERE MONTH(reservation.date_of_rental) = 5 -- May

UNION ALL

SELECT car.car_id, car.car_model_name, car.number_plate, renter.renter_id, CONCAT(renter.first_name, ' ', renter.last_name) AS renter_name, reservation.date_of_rental
FROM reservation
JOIN car ON reservation.car_id = car.car_id
JOIN renter ON reservation.reservation_id = renter.reservation_id
WHERE MONTH(reservation.date_of_rental) = 7; -- July

--======================================================================