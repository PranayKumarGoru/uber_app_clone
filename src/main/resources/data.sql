CREATE TABLE Users (
    user_id varchar(255) PRIMARY KEY,
    password varchar(255),
    name varchar(255),
    email varchar(255),
    phone varchar(255),
    city varchar(255)
);

INSERT INTO Users (user_id, password, name, email, phone, city)  
   VALUES ('ramu24', 'RamuK', 'Ramu Kothapalli', 'ram.k@relevel.com', '7785478856', 'Hyderabad');
INSERT INTO Users (user_id, password, name, email, phone, city)
   VALUES ('sureshV', 'INsta123', 'Suresh Vellore', 'suresh.v@relevel.com', '7785478987', 'Hyderabad');
INSERT INTO Users (user_id, password, name, email, phone, city)
   VALUES ('someshRocz', 'somuInsta', 'Somesh V', 'somu.v@relevel.com', '7784589721', 'Delhi');
INSERT INTO Users (user_id, password, name, email, phone, city)
   VALUES ('rakeshM', 'rakiInsta5', 'Rakesh Maralle', 'raki.m@relevel.com', '8874569752', 'Delhi');
INSERT INTO Users (user_id, password, name, email, phone, city)
   VALUES ('adityaB', 'adiInsta', 'Aditya B', 'adi.B@relevel.com', '9954786974', 'Mumbai');

   
CREATE TABLE ServiceCities (
	city varchar(255) PRIMARY KEY
);
INSERT INTO ServiceCities(city)
    VALUES ('hyderabad');
INSERT INTO ServiceCities(city)
    VALUES ('delhi');
INSERT INTO ServiceCities(city)
    VALUES ('mumbai');


CREATE TABLE Drivers (
    driver_id varchar(255) PRIMARY KEY,
    password varchar(255),
    name varchar(255),
    email varchar(255),
    phone varchar(255),
    vehicle_no varchar(255),
    vehicle_model varchar(255) 
);

INSERT INTO Drivers (driver_id, password, name, email, phone, vehicle_no, vehicle_model)  
   VALUES ('shyam.k', 'uberPassword', 'Shyam Kumar', 'shyam.k@relevel.com', '7785478856', 'TS06 DC5547', 'Swift Dzire');
INSERT INTO Drivers (driver_id, password, name, email, phone, vehicle_no, vehicle_model) 
   VALUES ('suman.y', 'uber123', 'Suman Yash', 'suman.y@relevel.com', '7785477487', 'TS06 BD5578', 'Idica Vista');


CREATE TABLE Bookings (
    booking_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    user_id varchar(255) references Users(user_id),
    pick_up_point varchar(255),
    drop_point varchar(255),
    city varchar(255),
    driver_id varchar(255) references Drivers(driver_id),
    status varchar(255),
    trip_rating DECIMAL,
    user_rating DECIMAL
);

INSERT INTO Bookings (user_id, pick_up_point, drop_point, city, driver_id, status, trip_rating, user_rating)  
   VALUES ('ramu24', 'ameerpet', 'gachibowli', 'hyderabad','shyam.k', 'completed', 5, 5);
INSERT INTO Bookings (user_id, pick_up_point, drop_point, city, driver_id, status, trip_rating, user_rating)  
   VALUES ('ramu24', 'gachibowli', 'ameerpet', 'hyderabad','shyam.k', 'completed', 5, 5);
INSERT INTO Bookings (user_id, pick_up_point, drop_point, city, driver_id, status, trip_rating, user_rating)  
   VALUES ('ramu24', 'ameerpet', 'madhapur', 'hyderabad','shyam.k', 'completed', 5, 5);
INSERT INTO Bookings (user_id, pick_up_point, drop_point, city, status)  
   VALUES ('ramu24', 'madhapur', 'gachibowli', 'hyderabad','pending');
INSERT INTO Bookings (user_id, pick_up_point, drop_point, city, status)  
   VALUES ('sureshV', 'ameerpet', 'gachibowli', 'hyderabad','pending');
--INSERT INTO Bookings (user_id, pick_up_point, drop_point, city, driver_id, status, trip_rating, user_rating)  
--   VALUES ('ramu24', 'ameerpet', 'gachibowli', 'hyderabad','completed', 5, 5);
--INSERT INTO Bookings (user_id, pick_up_point, drop_point, city, driver_id, status, trip_rating, user_rating)  
--   VALUES ('ramu24', 'ameerpet', 'gachibowli', 'hyderabad','completed', 5, 5);

   
