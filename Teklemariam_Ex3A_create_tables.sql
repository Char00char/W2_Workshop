DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

CREATE TABLE customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255),
    emergency_contact VARCHAR(100)
);

-- EMPLOYEE (must come before walk_details)
CREATE TABLE employee (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100),
    hire_date DATE
);

-- DOG INFO
CREATE TABLE dog_info (
    dog_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    dog_name VARCHAR(100) NOT NULL,
    pet_breed VARCHAR(100),
    age INT,
    size VARCHAR(50),
    medical_notes TEXT,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

-- WALK DETAILS
CREATE TABLE walk_details (
    walk_id INT AUTO_INCREMENT PRIMARY KEY,
    dog_id INT,
    employee_id INT,
    walk_date DATE,
    walk_time TIME,
    duration INT,
    notes TEXT,
    FOREIGN KEY (dog_id) REFERENCES dog_info(dog_id),
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);

-- PAYMENT
CREATE TABLE payment (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    walk_id INT,
    amount DECIMAL(10,2),
    payment_date DATE,
    method VARCHAR(50),
    status VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (walk_id) REFERENCES walk_details(walk_id)
);