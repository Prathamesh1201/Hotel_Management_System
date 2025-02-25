-- Insert data into Rooms Table
INSERT INTO ROOMS (RoomID, RoomType, Price, Status) VALUES
(1, 'Single', 1000, 'Available'),
(2, 'Single', 1000, 'Booked'),
(3, 'Double', 1800, 'Booked'),
(4, 'Deluxe Suite', 2500, 'Available'),
(5, 'Double', 1900, 'Available'),
(6, 'Presidential Suite', 3000, 'Available'),
(7, 'Presidential Suite', 3100, 'Booked'),
(8, 'Single', 1200, 'Available'),
(9, 'Family Suite', 3200, 'Available'),
(10, 'Deluxe Suite', 3000, 'Booked');

-- Insert data into Customers Table
INSERT INTO CUSTOMERS (CustomerID, Name, Age, ContactNo) VALUES
(1, 'Prathamesh Pisal', 22, '9544344545'),
(2, 'Sanjyot Phadatare', 21, '9544564545'),
(3, 'Vaishnavi Paisode', 21, '7844344545'),
(4, 'Omkar Sonavane', 22, '9544574545'),
(5, 'Kshitija Mane', 20, '9544378645'),
(6, 'Prerna Pandit', 21, '7944344545'),
(7, 'Raj Shetty', 26, '9544347845'),
(8, 'Ravi Kumar', 28, '9984344545');

-- Insert data into Bookings Table
INSERT INTO BOOKINGS (BookingID, RoomID, CustomerID, check_in, check_out) VALUES
(1, 2, 7, '2024-10-12', '2024-10-13'),
(2, 3, 8, '2024-10-11', '2024-10-12'),
(3, 7, 1, '2024-10-12', '2024-10-15'),
(4, 10, 5, '2024-10-13', '2024-10-14');

-- Insert data into Payments Table
INSERT INTO PAYMENTS (PaymentID, BookingID, Amount, PaymentDate) VALUES
(1, 1, 1000, '2024-10-12'),
(2, 2, 1800, '2024-10-11'),
(3, 3, 9300, '2024-10-14'),
(4, 4, 3000, '2024-10-14');
