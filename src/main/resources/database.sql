CREATE USER admin@localhost identified BY 'admin';
GRANT usage ON *.* TO admin@localhost identified BY 'admin';
DROP DATABASE IF EXISTS hotelBooking;
CREATE DATABASE IF NOT EXISTS hotelBooking;
GRANT ALL privileges ON hotelBooking.* TO admin@localhost;
USE hotelBooking;
CREATE TABLE hotel
  (
     id INT PRIMARY KEY AUTO_INCREMENT,
     name VARCHAR(100),
     address VARCHAR(200),
     phone VARCHAR(15),
     price DOUBLE
  );

INSERT INTO hotel (name, address, phone, price)
values ("name1", "address1", "7777777", "1000.0");
INSERT INTO hotel (name, address, phone, price)
values ("name2", "address2", "7777778", "2000.0");
INSERT INTO hotel (name, address, phone, price)
values ("name3", "address3", "7777779", "3000.0");
INSERT INTO hotel (name, address, phone, price)
values ("name4", "address4", "7777770", "4000.0");
INSERT INTO hotel (name, address, phone, price)
values ("name5", "address5", "7777771", "5000.0");