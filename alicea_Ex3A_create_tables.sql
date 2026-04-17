DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

CREATE TABLE Walkers (
	walker_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(20),
    role VARCHAR(30),
    hire_date DATE
);
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(150),
    city VARCHAR(50),
    state VARCHAR(2),
    zip VARCHAR(10),
    emergency_contact VARCHAR(100)
);

CREATE TABLE Pets (
	pet_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    dog_name VARCHAR(50),
    date_of_birth DATE,
    size VARCHAR(10),
    notes TEXT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Walks (
    walk_id INT AUTO_INCREMENT PRIMARY KEY,
    pet_id INT NOT NULL,
    walker_id INT NOT NULL,
    scheduled_date DATE NOT NULL,
    scheduled_time TIME,
    duration_minutes INT,
    status VARCHAR(20) DEFAULT 'scheduled',
    notes TEXT,
    FOREIGN KEY (pet_id) REFERENCES Pets(pet_id),
    FOREIGN KEY (walker_id) REFERENCES Walkers(walker_id)
);

CREATE TABLE Payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    walk_id INT NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    payment_date DATE,
    payment_method VARCHAR(30),
    payment_status VARCHAR(20) DEFAULT 'pending',
    FOREIGN KEY (walk_id) REFERENCES Walks(walk_id)
);