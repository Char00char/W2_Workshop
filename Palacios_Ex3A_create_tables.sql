DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;
-- CUSTOMERS
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(20),
    emergency_contact VARCHAR(100),
    notes TEXT
);

-- DOGS
CREATE TABLE dogs (
    dog_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    dog_name VARCHAR(50) NOT NULL,
    breed VARCHAR(50),
    age INT,
    size VARCHAR(20),
    notes TEXT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- WALKERS
CREATE TABLE walkers (
    walker_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100)
);

-- WALKS
CREATE TABLE walks (
    walk_id INT PRIMARY KEY,
    dog_id INT NOT NULL,
    walker_id INT,
    scheduled_date DATE NOT NULL,
    scheduled_time TIME NOT NULL,
    duration_minutes INT,
    status VARCHAR(20),
    completion_time TIMESTAMP,
    price DECIMAL(6,2),
    notes TEXT,
    FOREIGN KEY (dog_id) REFERENCES dogs(dog_id),
    FOREIGN KEY (walker_id) REFERENCES walkers(walker_id)
);

-- PAYMENTS
CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    walk_id INT NOT NULL,
    amount DECIMAL(8,2) NOT NULL,
    payment_date DATE NOT NULL,
    payment_method VARCHAR(20),
    payment_status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (walk_id) REFERENCES walks(walk_id)
);