CREATE TABLE Admin(
ad_username varchar(100) primary key,
ad_name varchar(100),
ad_password varchar(100),
ad_email varchar(100)
);

INSERT INTO Admin (ad_username, ad_name, ad_password, ad_email) VALUES
('fatema67', 'Fatema', 'fatema345', 'fatemasultana@gmail.com'),
('israt89', 'Israt', 'israt###', 'israt456@gmail.com'),
('tina567', 'Tina', 'tina@555', 'tina2002@gmail.com'),
('mina34', 'Mina', 'mina@#$%', 'mina345@gmail.com'),
('fatema53', 'Fatema', 'fatema@896$', 'fatema@gmail.com'),
('karim45', 'Karim', 'karim456', 'karim04@gmail.com'),
('rahim23', 'Rahim', 'rahim713', 'rahim78@gmail.com'),
('sultana77', 'Sultana', 'sultana123', 'sultana@gmail.com'),
('faria90', 'Faria', 'faria345', 'faria2002@gmail.com'),
('nabila88', 'Nabila', 'nabila@123', 'nabila88@gmail.com'),
('hasan99', 'Hasan', 'hasan456', 'hasan99@gmail.com'),
('sajjad60', 'Sajjad', 'sajjad***', 'sajjad2003@gmail.com');

SELECT * FROM Admin;



CREATE TABLE Customer (
    cus_id INT PRIMARY KEY,
    cus_name VARCHAR(100),
    cus_email VARCHAR(100),
    cus_pass VARCHAR(100),
    cus_phone VARCHAR(15)
);

INSERT INTO Customer (cus_id, cus_name, cus_email, cus_pass, cus_phone) VALUES 
(1, 'Rahul', 'rahul23@gmail.com', 'rahul123', '01711000001'),
(2, 'Sabina', 'sabina457@gmail.com', 'sabina321', '01822000002'),
(3, 'Muhit', 'muhit789@gmail.com', 'muhit456', '01933000003'),
(4, 'Sharmin', 'sharmin53@gmail.com', 'sharmin789', '01644000004'),
(5, 'Tanvir', 'tanvir2002@gmail.com', 'tanvir987', '01555000005'),
(6, 'Rafia', 'rafia456@gmail.com', 'rafia321', '01366000006'),
(7, 'Saiful', 'saiful123@gmail.com', 'saiful123', '01477000007'),
(8, 'Nusrat', 'nusrat990@gmail.com', 'nusrat456', '01788000008'),
(9, 'Adnan', 'adnan345@gmail.com', 'adnan789', '01899000009'),
(10, 'Sabrina', 'sabrina89@gmail.com', 'sabrina987', '01900000010'),
(11, 'Zubair', 'zubair63@gmail.com', 'zubair321', '01611000011'),
(12, 'Mim', 'mim29@gmail.com', 'mim123', '01522000012');

SELECT * FROM Customer;



CREATE TABLE Bus(
Bus_id int primary key,
Bus_name text not null,
Capacity int not null,
Bus_time varchar(100),
Bus_type text null
);

INSERT INTO Bus (Bus_id,Bus_name, Capacity, Bus_time, Bus_type) VALUES
(001,'Utsab',45,'10.00 am','Non-AC'),
(002,'Bandhan',50,'9.00 am','Non-AC'),
(003,'Saintmartin',40,'11.00 am','AC'),
(004,'Labbaik',56,'8.00 am','Non-AC'),
(005,'Moumita',35,'8.30 am','Non-AC'),
(006,'Green Dhaka',40,'5.00 pm','AC'),
(007,'Welcome',35,'1.00 pm','Non-AC'),
(008,'Ena',40,'7.00 am','AC'),
(009,'Hanif',38,'6.00 pm','AC'),
(010,'Sohag',20,'8.00 pm','AC'),
(011,'Royal Express',45,'7.30 pm','AC'),
(012,'Green line',40,'9.00 pm','AC');

SELECT * FROM Bus;



CREATE TABLE Train(
    train_id INT PRIMARY KEY,
    train_name VARCHAR(100),
    train_type VARCHAR(100),
    train_time VARCHAR(100),
    capacity INT            
);

INSERT INTO Train (train_id, train_name, train_type, train_time, capacity) VALUES
(101, 'Sundarban Express', 'AC', '06:00 AM', 500),
(102, 'Padma Express', 'NON AC', '07:15 AM', 450),
(103, 'Silk City Express', 'AC', '08:30 AM', 480),
(104, 'Chitra Express', 'NON AC', '09:45 AM', 430),
(105, 'Tista Express', 'AC', '10:00 AM', 470),
(106, 'Ekota Express', 'NON AC', '11:20 AM', 460),
(107, 'Parabat Express', 'AC', '12:40 PM', 490),
(108, 'Mohanagar Provati', 'NON AC', '01:55 PM', 440),
(109, 'Upakul Express', 'AC', '03:10 PM', 510),
(110, 'Turna Nishitha', 'NON AC', '04:30 PM', 420),
(111, 'Jamuna Express', 'AC', '05:45 PM', 495),
(112, 'Lalmoni Express', 'NON AC', '07:00 PM', 425);

SELECT * FROM Train;



CREATE TABLE Plane(
    plane_id INT PRIMARY KEY,
    plane_name VARCHAR(100),
    plane_time VARCHAR(100)
);

INSERT INTO Plane (plane_id, plane_name, plane_time) VALUES
(201, 'Biman Bangladesh Airlines', '06:30 AM'),
(202, 'US-Bangla Airlines', '07:45 AM'),
(203, 'Novoair', '08:20 AM'),
(204, 'Regent Airways', '09:15 AM'),
(205, 'Bangladesh Airlines Express', '10:00 AM'),
(206, 'Golden Wings', '11:10 AM'),
(207, 'Sky Air', '12:30 PM'),
(208, 'FlyFast', '01:40 PM'),
(209, 'AeroLink', '02:50 PM'),
(210, 'BD Air Connect', '04:00 PM'),
(211, 'Eastern Air', '05:20 PM'),
(212, 'CloudJet Airlines', '06:45 PM');

SELECT * FROM Plane;



CREATE TABLE Ticket (
    ticket_id INT PRIMARY KEY,
    cus_id INT,
    ad_username VARCHAR(100),
    train_id INT,
    bus_id INT,
    plane_id INT,
    ticket_from VARCHAR(100),
    ticket_to VARCHAR(100),
    ticket_date DATE,
    ticket_class VARCHAR(50),
    seat_number VARCHAR(10),
    ticket_price DECIMAL(10, 2),
    ticket_type VARCHAR(50),
    FOREIGN KEY (cus_id) REFERENCES Customer(cus_id),
    FOREIGN KEY (ad_username) REFERENCES Admin(ad_username),
    FOREIGN KEY (train_id) REFERENCES Train(train_id),
    FOREIGN KEY (bus_id) REFERENCES Bus(bus_id),
    FOREIGN KEY (plane_id) REFERENCES Plane(plane_id)
);

INSERT INTO Ticket (ticket_id, cus_id, ad_username, train_id, Bus_id, plane_id, ticket_from, ticket_to, ticket_date, ticket_class, seat_number, ticket_price, ticket_type) VALUES
(101, 1, 'fatema67', 101, 001, 201, 'Dhaka', 'Chittagong', '2025-05-01', 'Economy', 'E12', 850.00, 'Train'),
(102, 2, 'israt89', 102, 002, 202, 'Dhaka', 'Sylhet', '2025-05-02', 'Business', 'B4', 1500.00, 'Bus'),
(103, 3, 'tina567', 103, 003, 203, 'Chittagong', 'Dhaka', '2025-05-03', 'Economy', 'E15', 900.00, 'Train'),
(104, 4, 'mina34', 104, 004, 204, 'Rajshahi', 'Dhaka', '2025-05-04', 'Economy', 'E18', 750.00, 'Bus'),
(105, 5, 'fatema53', 105, 005, 205, 'Dhaka', 'Barisal', '2025-05-05', 'Business', 'B2', 2000.00, 'Air'),
(106, 6, 'karim45', 106, 006, 206, 'Khulna', 'Dhaka', '2025-05-06', 'Economy', 'E6', 950.00, 'Train'),
(107, 7, 'rahim23', 107, 007, 207, 'Sylhet', 'Chittagong', '2025-05-07', 'Business', 'B1', 1800.00, 'Air'),
(108, 8, 'sultana77', 108, 008, 208, 'Dhaka', 'Cox’s Bazar', '2025-05-08', 'Economy', 'E10', 1200.00, 'Bus'),
(109, 9, 'faria90', 109, 009, 209, 'Chittagong', 'Khulna', '2025-05-09', 'Business', 'B6', 1700.00, 'Train'),
(110, 10, 'nabila88', 110, 010, 210, 'Dhaka', 'Jessore', '2025-05-10', 'Economy', 'E9', 800.00, 'Bus'),
(111, 11, 'hasan99', 111, 011, 211, 'Barisal', 'Dhaka', '2025-05-11', 'Economy', 'E13', 850.00, 'Train'),
(112, 12, 'sajjad60', 112, 012, 212, 'Dhaka', 'Rangpur', '2025-05-12', 'Business', 'B3', 1600.00, 'Air');

SELECT * FROM Ticket;



CREATE TABLE Resell (
  resell_id INT PRIMARY KEY,
  buyer_cus_id INT,
  seller_cus_id INT,
  ticket_id INT,
  price DECIMAL(10,2),
  FOREIGN KEY (buyer_cus_id) REFERENCES Customer(cus_id),
  FOREIGN KEY (seller_cus_id) REFERENCES Customer(cus_id),
  FOREIGN KEY (ticket_id) REFERENCES Ticket(ticket_id)
);

INSERT INTO Resell (resell_id, buyer_cus_id, seller_cus_id, ticket_id, price) VALUES
(1, 2, 1, 101, 900.00),
(2, 4, 3, 103, 950.00),
(3, 6, 5, 105, 2100.00),
(4, 8, 7, 107, 1850.00),
(5, 10, 9, 109, 1750.00),
(6, 12, 11, 111, 900.00);

SELECT * FROM Resell;



