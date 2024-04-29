-- Create database 
CREATE SCHEMA IF NOT EXISTS hotel_booking_db;
USE hotel_booking_db;

-- Create hotel table
CREATE TABLE IF NOT EXISTS hotel (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255),
    rating FLOAT,
	description VARCHAR(255);
);

-- Insert sample data into hotel table
INSERT INTO hotel (name, address, rating, description) VALUES
    ('Hotel ABC', '123 Navi Mumbai', 4.5, "Good Hotel"),
    ('Hotel XYZ', '456 Silvasa Street', 4.2, "Nice ambience");

-- Create user table
CREATE TABLE IF NOT EXISTS user (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(100),
    role VARCHAR(100)
);

-- Insert sample data into user table
INSERT INTO user (id, username, password, role) VALUES
    (1,'Meenal Kumar', 'password123','Customer'),
    (2,'Kalpesh Wagh', 'securepass12','Customer');
    
