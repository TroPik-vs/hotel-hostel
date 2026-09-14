CREATE DATABASE IF NOT EXISTS hotel_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE hotel_db;

CREATE TABLE admins (
 id INT AUTO_INCREMENT PRIMARY KEY,
 username VARCHAR(100) NOT NULL UNIQUE,
 password VARCHAR(255) NOT NULL,
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO admins(username,password) VALUES
('admin','$2y$12$Px01RVeXnjh83Y1SZmt3LODadIyecNDY4v3oT7EpYtGgLebcpUlJC');

CREATE TABLE properties (
 id INT AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(255) NOT NULL,
 type ENUM('hotel','hostel') NOT NULL,
 location VARCHAR(255) NOT NULL,
 price DECIMAL(10,2) NOT NULL,
 image VARCHAR(500) NOT NULL,
 description TEXT NOT NULL,
 services TEXT,
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE bookings (
 id INT AUTO_INCREMENT PRIMARY KEY,
 property_id INT NOT NULL,
 full_name VARCHAR(255) NOT NULL,
 email VARCHAR(255) NOT NULL,
 phone VARCHAR(50) NOT NULL,
 check_in DATE NOT NULL,
 check_out DATE NOT NULL,
 guests INT NOT NULL,
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 FOREIGN KEY(property_id) REFERENCES properties(id) ON DELETE CASCADE
);

CREATE TABLE contacts (
 id INT AUTO_INCREMENT PRIMARY KEY,
 full_name VARCHAR(255) NOT NULL,
 email VARCHAR(255) NOT NULL,
 subject VARCHAR(255) NOT NULL,
 message TEXT NOT NULL,
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO properties(name,type,location,price,image,description,services) VALUES
('هۆتێلی ئارارات','hotel','هەولێر',120,'https://images.unsplash.com/photo-1566073771259-6a8506099945?auto=format&fit=crop&w=900&q=80','هۆتێلێکی مۆدێرن و ئارام بۆ میوانان.','Wi-Fi, Parking, Restaurant, Air Conditioning'),
('هۆتێلی کوردستان','hotel','سلێمانی',95,'https://images.unsplash.com/photo-1551882547-ff40c63fe5fa?auto=format&fit=crop&w=900&q=80','شوێنێکی جوان و گونجاو بۆ گەشت و کار.','Wi-Fi, Restaurant, Parking'),
('هۆستێلی گەشتیار','hostel','هەولێر',25,'https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?auto=format&fit=crop&w=900&q=80','هۆستێلێکی ئابووری و گونجاو بۆ گەشتیاران.','Wi-Fi, Shared Kitchen, Air Conditioning'),
('هۆستێلی دۆکان','hostel','دهۆک',30,'https://images.unsplash.com/photo-1524758631624-e2822e304c36?auto=format&fit=crop&w=900&q=80','شوێنێکی ئارام بۆ مانەوە و گەشت.','Wi-Fi, Parking, Shared Kitchen');
