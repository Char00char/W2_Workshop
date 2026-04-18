-- CUSTOMERS (10 records)
INSERT INTO customers (customer_id, first_name, last_name, phone, email, address, city, state, emergency_contact, notes) VALUES
(111, 'Sarah', 'Mills', '703-555-1001', 'sarah.mills@email.com', '123 Oak St', 'Ashburn', 'VA', 'Tom Mills', 'Prefers morning walks'),
(112, 'David', 'Nguyen', '703-555-1002', 'david.nguyen@email.com', '456 Pine St', 'Leesburg', 'VA', 'Linh Nguyen', ''),
(113, 'Emily', 'Clark', '703-555-1003', 'emily.clark@email.com', '789 Maple Ave', 'Sterling', 'VA', 'John Clark', 'Dog is shy'),
(114, 'James', 'Patel', '703-555-1004', 'james.patel@email.com', '321 Birch Rd', 'Herndon', 'VA', 'Anita Patel', ''),
(115, 'Olivia', 'Garcia', '703-555-1005', 'olivia.garcia@email.com', '654 Cedar Ln', 'Reston', 'VA', 'Carlos Garcia', ''),
(116, 'Michael', 'Brown', '703-555-1006', 'michael.brown@email.com', '987 Elm St', 'Chantilly', 'VA', 'Laura Brown', 'Needs extra exercise'),
(117, 'Sophia', 'Wilson', '703-555-1007', 'sophia.wilson@email.com', '147 Spruce St', 'Ashburn', 'VA', 'Mark Wilson', ''),
(118, 'Daniel', 'Lee', '703-555-1008', 'daniel.lee@email.com', '258 Willow St', 'Leesburg', 'VA', 'Grace Lee', ''),
(119, 'Ava', 'Martinez', '703-555-1009', 'ava.martinez@email.com', '369 Aspen Rd', 'Sterling', 'VA', 'Luis Martinez', ''),
(120, 'Noah', 'Davis', '703-555-1010', 'noah.davis@email.com', '159 Poplar St', 'Herndon', 'VA', 'Emma Davis', '');

--------------------------------------------------

-- DOGS (10 records)
INSERT INTO dogs (dog_id, customer_id, dog_name, breed, age, size, notes) VALUES
(12, 111, 'Max', 'Golden Retriever', 5, 'Large', ''),
(13, 112, 'Bella', 'Poodle', 3, 'Medium', ''),
(14, 113, 'Charlie', 'Beagle', 4, 'Medium', 'Nervous around strangers'),
(15, 114, 'Rocky', 'Bulldog', 6, 'Medium', ''),
(16, 115, 'Luna', 'Husky', 2, 'Large', 'Very energetic'),
(17, 116, 'Daisy', 'Shih Tzu', 7, 'Small', ''),
(18, 117, 'Milo', 'Labrador', 3, 'Large', ''),
(19, 118, 'Coco', 'Chihuahua', 5, 'Small', ''),
(20, 119, 'Buddy', 'Boxer', 4, 'Large', ''),
(21, 120, 'Zoe', 'Corgi', 2, 'Small', '');

--------------------------------------------------

-- WALKERS (ONLY 2 records)
INSERT INTO walkers (walker_id, first_name, last_name, phone, email) VALUES
(102, 'Jake', 'Turner', '703-555-2001', 'jturner@lanadogwalking.com'),
(103, 'Mia', 'Lopez', '703-555-2002', 'mlopez@lanadogwalking.com');

--------------------------------------------------

-- WALKS (10 records with mixed outcomes)
INSERT INTO walks (walk_id, dog_id, walker_id, walk_date, start_time, end_time, duration, status, price, notes) VALUES
(2, 12, 102, '2026-04-01', '09:00', '09:30', 30, 'COMPLETED', 25, ''),
(3, 13, 103, '2026-04-01', '10:00', '10:30', 30, 'COMPLETED', 25, ''),
(4, 14, 102, '2026-04-02', '11:00', '11:30', 30, 'CANCELLED', 0, 'Owner cancelled'),
(5, 15, 103, '2026-04-02', '12:00', '12:30', 30, 'NO_SHOW', 0, 'Walker could not access home'),
(6, 16, 102, '2026-04-03', '13:00', '13:45', 45, 'COMPLETED', 35, ''),
(7, 17, 103, '2026-04-03', '14:00', '14:30', 30, 'COMPLETED', 25, ''),
(8, 18, 102, '2026-04-04', '15:00', '15:30', 30, 'COMPLETED', 25, ''),
(9, 19, 103, '2026-04-04', '16:00', '16:30', 30, 'CANCELLED', 0, 'Weather issue'),
(10, 20, 102, '2026-04-05', '17:00', '17:30', 30, 'COMPLETED', 25, ''),
(11, 21, 103, '2026-04-05', '18:00', '18:30', 30, 'COMPLETED', 25, '');

--------------------------------------------------

-- PAYMENTS (10 records with failures/refunds)
INSERT INTO payments (payment_id, walk_id, amount, payment_date, payment_method, payment_status) VALUES
(1001, 2, 25, '2026-04-01', 'Credit Card', 'PAID'),
(1002, 3, 25, '2026-04-01', 'Credit Card', 'PAID'),
(1003, 4, 0, '2026-04-02', 'N/A', 'REFUNDED'),
(1004, 5, 0, '2026-04-02', 'N/A', 'FAILED'),
(1005, 6, 35, '2026-04-03', 'Cash', 'PAID'),
(1006, 7, 25, '2026-04-03', 'Credit Card', 'PAID'),
(1007, 8, 25, '2026-04-04', 'Credit Card', 'PAID'),
(1008, 9, 0, '2026-04-04', 'N/A', 'REFUNDED'),
(1009, 10, 25, '2026-04-05', 'Debit Card', 'PAID'),
(1010, 11, 25, '2026-04-05', 'Credit Card', 'FAILED');
