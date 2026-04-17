SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE payments;
TRUNCATE TABLE walks;
TRUNCATE TABLE dogs;
TRUNCATE TABLE walkers;
TRUNCATE TABLE customers;
SET FOREIGN_KEY_CHECKS = 1;

USE lana_dog_walking;

INSERT INTO customers (customer_id, first_name, last_name, phone, email, address, emergency_contact) 
VALUES 
(1, 'John', 'Kennedy', '571-456-2589', 'john.kennedy@email.com', '123 silent tree pl, Woodbridge', 'John kennedy (571-456-2589)'),
(2, 'Sarah', 'Miller', '703-555-0122', 'sarah.miller@email.com', '456 Oak Ridge Ct, Woodbridge', 'Robert Miller (703-555-0123)'),
(3, 'Michael', 'Chen', '571-222-3344', 'm.chen@email.com', '789 Maple Ave, Dale City', 'Alice Chen (571-222-3345)'),
(4, 'Elena', 'Rodriguez', '703-888-9900', 'elena.rod@email.com', '12 Pine Terrace, Lake Ridge', 'Carlos Rodriguez (703-888-9901)'),
(5, 'David', 'Smith', '202-555-4433', 'dsmith99@email.com', '101 River Rd, Occoquan', 'Linda Smith (202-555-4434)'),
(6, 'Jessica', 'Taylor', '571-666-7788', 'jtaylor.walks@email.com', '3322 Birch Blvd, Woodbridge', 'Mark Taylor (571-666-7789)'),
(7, 'Marcus', 'Johnson', '703-111-2233', 'mjohnson@email.com', '887 Cedar Lane, Manassas', 'Tasha Johnson (703-111-2234)'),
(8, 'Chloe', 'Davis', '571-444-5566', 'chloe.d@email.com', '55 Willow Way, Dumfries', 'James Davis (571-444-5567)'),
(9, 'Kevin', 'Patel', '202-777-8899', 'kpatel@email.com', '2020 Poplar Dr, Woodbridge', 'Priya Patel (202-777-8900)'),
(10, 'Sophia', 'Wilson', '703-333-4455', 'sophia.w@email.com', '940 Aspen Ct, Dale City', 'Tom Wilson (703-333-4456)'),
(11, 'Brian', 'OConnor', '571-999-0011', 'brianoc@email.com', '15 Sycamore St, Lake Ridge', 'Kelly OConnor (571-999-0012)');

INSERT INTO walkers (walker_id, first_name, last_name, email, phone, role, hire_date)
VALUES 
(1, 'Maribella', 'Bob', 'maribella.b@email.com', '789-564-1236', 'Lead Walker', '2026-01-15'),
(2, 'Julian', 'Vance', 'j.vance@email.com', '703-555-1010', 'Assistant Walker', '2026-01-20'),
(3, 'Amara', 'Kassa', 'amara.k@email.com', '571-222-9988', 'Lead Walker', '2026-02-01'),
(4, 'Marcus', 'Reed', 'mreed88@email.com', '202-444-5566', 'Assistant Walker', '2026-02-05'),
(5, 'Elena', 'Guerra', 'elena.g@email.com', '703-111-2233', 'Lead Walker', '2026-02-15'),
(6, 'Tariq', 'Ahmed', 't.ahmed@email.com', '571-888-7744', 'Assistant Walker', '2026-03-01'),
(7, 'Chloe', 'Simms', 'chloe.simms@email.com', '703-999-0011', 'Lead Walker', '2026-03-10'),
(8, 'Samuel', 'Lulseged', 'sammy.l@email.com', '555-666-7777', 'Assistant Walker', '2026-03-15'),
(9, 'Marta', 'Bekele', 'marta.b@email.com', '571-333-4455', 'Lead Walker', '2026-03-22'),
(10, 'Liam', 'OConnor', 'loconnor@email.com', '703-444-8899', 'Assistant Walker', '2026-04-01'),
(11, 'Sarah', 'Tadesse', 'sara.t@email.com', '555-111-2222', 'Assistant Walker', '2026-04-05');

INSERT INTO dogs (dog_id, customer_id, name, breed, age, size, medical_notes) 
VALUES 
(1, 3, 'Rocky', 'Boxer', 4, 'Medium', 'No Poultry'),
(2, 1, 'Bella', 'Golden Retriever', 3, 'Large', 'Allergic to bees'),
(3, 5, 'Charlie', 'Beagle', 5, 'Medium', 'Daily joint supplement needed'),
(4, 2, 'Luna', 'French Bulldog', 2, 'Small', 'Prone to overheating'),
(5, 8, 'Max', 'German Shepherd', 6, 'Large', 'No medical notes'),
(6, 11, 'Daisy', 'Poodle', 4, 'Medium', 'Sensitive stomach - no treats'),
(7, 4, 'Cooper', 'Dachshund', 7, 'Small', 'Back issues - no jumping'),
(8, 7, 'Milo', 'Jack Russell', 1, 'Small', 'Up to date on all shots'),
(9, 3, 'Bailey', 'Labrador', 8, 'Large', 'Mild hip dysplasia'),
(10, 9, 'Teddy', 'Goldendoodle', 2, 'Medium', 'Anxious around loud noises'),
(11, 6, 'Ruby', 'Cocker Spaniel', 3, 'Medium', 'Ear cleaning required weekly');

INSERT INTO walks (walk_id, dog_id, walker_id, scheduled_date, scheduled_time, status, notes) 
VALUES 
(1, 1, 1, '2026-05-01', '10:00:00', 'scheduled', 'Morning park walk'),
(2, 3, 5, '2026-05-01', '08:30:00', 'Completed', 'Quick neighborhood loop'),
(3, 7, 2, '2026-05-01', '13:00:00', 'Completed', 'Used the long leash'),
(4, 11, 8, '2026-05-02', '09:00:00', 'Scheduled', 'Watch for other dogs'),
(5, 2, 1, '2026-05-02', '11:30:00', 'Scheduled', 'Park trail walk'),
(6, 5, 10, '2026-05-02', '16:00:00', 'Cancelled', 'Owner stayed home'),
(7, 9, 3, '2026-05-03', '10:00:00', 'Scheduled', 'Bring water bowl'),
(8, 4, 6, '2026-05-03', '14:30:00', 'Scheduled', 'Avoid the construction site'),
(9, 8, 4, '2026-05-04', '07:00:00', 'Scheduled', 'Early morning cardio'),
(10, 6, 11, '2026-05-04', '12:00:00', 'Scheduled', 'No treats allowed'),
(11, 10, 7, '2026-05-04', '15:45:00', 'Scheduled', 'Check paws after walk');

INSERT INTO payments (payment_id, customer_id, walk_id, amount, payment_date, payment_method, payment_status) 
VALUES 
(1, 1, 1, 30.00, '2026-05-02', 'Credit Card', 'Completed'),
(2, 3, 2, 25.00, '2026-05-02', 'Credit Card', 'Completed'),
(3, 7, 3, 35.00, '2026-05-02', 'Cash', 'Completed'),
(4, 11, 4, 40.00, '2026-05-03', 'Credit Card', 'Pending'),
(5, 2, 5, 30.00, '2026-05-03', 'Venmo', 'Completed'),
(6, 5, 6, 15.00, '2026-05-03', 'Credit Card', 'Refunded'),
(7, 9, 7, 45.00, '2026-05-04', 'Cash', 'Completed'),
(8, 4, 8, 25.00, '2026-05-04', 'Credit Card', 'Completed'),
(9, 8, 9, 30.00, '2026-05-05', 'Venmo', 'Completed'),
(10, 6, 10, 40.00, '2026-05-05', 'Credit Card', 'Pending'),
(11, 10, 11, 35.00, '2026-05-06', 'Venmo', 'Completed');

USE lana_dog_walking;
SELECT * FROM customers;
SELECT * FROM walkers;
SELECT * FROM dogs;
SELECT * FROM walks;
SELECT * FROM payments;