-- Check Room Availability
SELECT * FROM ROOMS WHERE Status = 'Available';

-- Check Booked Rooms
SELECT * FROM ROOMS WHERE Status = 'Booked';

-- Retrieve All Customers
SELECT * FROM CUSTOMERS;

-- Book an Available Room and Make Payment
UPDATE ROOMS SET Status = 'Booked' WHERE RoomID = 1;
INSERT INTO BOOKINGS (BookingID, RoomID, CustomerID, check_in, check_out) 
VALUES (5, 1, 4, '2024-10-12', '2024-10-13');
INSERT INTO PAYMENTS (PaymentID, BookingID, Amount, PaymentDate) 
VALUES (5, 5, 1000, '2024-10-12');

-- Find All Bookings by a Specific Customer
SELECT b.BookingID, r.RoomType, c.Name, b.check_in, b.check_out 
FROM BOOKINGS b 
JOIN ROOMS r ON b.RoomID = r.RoomID 
JOIN CUSTOMERS c ON b.CustomerID = c.CustomerID 
WHERE b.CustomerID = 1;

-- Get Booking History
SELECT c.Name, r.RoomType, b.check_in, b.check_out, p.Amount
FROM CUSTOMERS c
JOIN BOOKINGS b ON c.CustomerID = b.CustomerID
JOIN ROOMS r ON b.RoomID = r.RoomID
JOIN PAYMENTS p ON b.BookingID = p.BookingID;

-- Revenue Generated Between Specific Dates
SELECT SUM(Amount) AS Total_Revenue
FROM PAYMENTS
WHERE PaymentDate BETWEEN '2024-10-01' AND '2024-10-31';

-- Check Room Availability in a Specific Date Range
SELECT RoomID, RoomType, Price 
FROM ROOMS 
WHERE RoomID NOT IN (
    SELECT RoomID 
    FROM BOOKINGS 
    WHERE ('2024-10-22' BETWEEN check_in AND check_out) 
    OR ('2024-10-25' BETWEEN check_in AND check_out)
);

-- Update Room Status After Check-out
UPDATE ROOMS SET Status = 'Available' WHERE RoomID = 1;

-- Find the Highest and Lowest Priced Available Rooms
SELECT * FROM ROOMS WHERE Price = (SELECT MAX(Price) FROM ROOMS WHERE Status = 'Available');
SELECT * FROM ROOMS WHERE Price = (SELECT MIN(Price) FROM ROOMS WHERE Status = 'Available');

-- Find Customers Who Booked Expensive Rooms
SELECT c.Name, r.RoomType
FROM BOOKINGS b
JOIN ROOMS r ON b.RoomID = r.RoomID
JOIN CUSTOMERS c ON b.CustomerID = c.CustomerID
WHERE r.RoomType IN ('Deluxe Suite', 'Presidential Suite', 'Family Suite');
