DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255),
    emergency_contact VARCHAR(100)
);

CREATE TABLE walkers (
    walker_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
    role VARCHAR(50),
    hire_date DATE
);

CREATE TABLE dogs (
    dog_id INT PRIMARY KEY,
    customer_id INT,
    name VARCHAR(50),
    breed VARCHAR(50),
    age INT,
    size VARCHAR(20),
    medical_notes TEXT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE walks (
    walk_id INT PRIMARY KEY,
    dog_id INT,
    walker_id INT,
    scheduled_date DATE,
    scheduled_time TIME,
    status VARCHAR(50),
    notes TEXT,
    FOREIGN KEY (dog_id) REFERENCES dogs(dog_id),
    FOREIGN KEY (walker_id) REFERENCES walkers(walker_id)
);

CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    customer_id INT,
    walk_id INT,
    amount DECIMAL(10, 2),
    payment_date DATE,
    payment_method VARCHAR(50),
    payment_status VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (walk_id) REFERENCES walks(walk_id)
);