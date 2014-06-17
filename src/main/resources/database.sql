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

CREATE TABLE comment
(
  id INT PRIMARY KEY AUTO_INCREMENT,
  hotelId INT,
  author VARCHAR(30),
  text VARCHAR(1000)
);

INSERT INTO comment (hotelId, author, text)
VALUES (1, "author1", "text1");
INSERT INTO comment (hotelId, author, text)
VALUES (1, "author2", "text2");
INSERT INTO comment (hotelId, author, text)
VALUES (1, "author3", "text3");
INSERT INTO comment (hotelId, author, text)
VALUES (1, "author4", "text4");
INSERT INTO comment (hotelId, author, text)
VALUES (2, "author5", "text5");
INSERT INTO comment (hotelId, author, text)
VALUES (3, "author6", "text6");
INSERT INTO comment (hotelId, author, text)
VALUES (3, "author7", "text7");
INSERT INTO comment (hotelId, author, text)
VALUES (3, "author8", "text8");
INSERT INTO comment (hotelId, author, text)
VALUES (4, "author9", "text9");
INSERT INTO comment (hotelId, author, text)
VALUES (5, "author0", "text0");
INSERT INTO comment (hotelId, author, text)
VALUES (5, "author1", "text1");
INSERT INTO comment (hotelId, author, text)
VALUES (3, "author2", "text12");