-- Create Database
CREATE DATABASE Hotel_Management_System;
USE Hotel_Management_System;

-- Create Rooms Table
CREATE TABLE ROOMS (
    RoomID INT PRIMARY KEY,
    RoomType VARCHAR(255),
    Price INT,
    Status VARCHAR(255)
);

-- Create Customers Table
CREATE TABLE CUSTOMERS (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(255),
    Age INT CHECK (Age >= 18),
    ContactNo VARCHAR(266)
);

-- Create Bookings Table
CREATE TABLE BOOKINGS (
    BookingID INT PRIMARY KEY,
    RoomID INT,
    CustomerID INT,
    check_in DATE,
    check_out DATE,
    FOREIGN KEY (RoomID) REFERENCES ROOMS(RoomID),
    FOREIGN KEY (CustomerID) REFERENCES CUSTOMERS(CustomerID)
);

-- Create Payments Table
CREATE TABLE PAYMENTS (
    PaymentID INT PRIMARY KEY,
    BookingID INT,
    Amount INT,
    PaymentDate DATE,
    FOREIGN KEY (BookingID) REFERENCES BOOKINGS(BookingID)
);
