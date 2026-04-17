USE lana_dog_walking;
INSERT INTO Customer (customer_id, name, phone, email, address, emergency_contact)
VALUES
(10001, 'Chris Walter', '7183672118', 'chriswalter@gmail.com', '628 Georgiya Ave MD 20010', '7187654565'),
(10002, 'Michael Thomas', '3015550192', 'michaelthomas@gmail.com', '45 Cedar Lane MD 20740', '3015557781'),
(10003, 'Sarah Johnson', '2025550147', 'sarahjohnson@gmail.com', '118 Maple Street MD 20904', '2025556633'),
(10004, 'David Anderson', '2405550188', 'davidanderson@gmail.com', '77 Pinecrest Dr MD 20850', '2405559921'),
(10005, 'Emily Clark', '3015550110', 'emilyclark@gmail.com', '902 Oakwood Ave MD 20715', '3015558844'),
(10006, 'James Roberts', '4105550176', 'jamesroberts@gmail.com', '34 Lakeview Rd MD 21042', '4105557722'),
(10007, 'Laura Mitchell', '4435550133', 'lauramitchell@gmail.com', '560 Elm Street MD 21210', '4435556677'),
(10008, 'Brian Scott', '2405550166', 'brianscott@gmail.com', '12 Brookside Lane MD 20878', '2405554433'),
(10009, 'Olivia Brown', '3015550199', 'oliviabrown@gmail.com', '88 Sunset Blvd MD 20906', '3015552211'),
(10010, 'William Davis', '4105550155', 'williamdavis@gmail.com', '301 Forest Hill Rd MD 21061', '4105553344'),
(10011, 'Sophia Martinez', '2025550138', 'sophiamartinez@gmail.com', '19 Riverbend Ct MD 20744', '2025559988');
SELECT * FROM customer;
INSERT INTO Dog_Info (dog_id, customer_id, dog_name, pet_breed, age, size, medical_notes)
VALUES
(1000, 10001, 'Max', 'German Shepherd', 5, 'Medium', 'Healthy'),
(1001, 10002, 'Buddy', 'Golden Retriever', 3, 'Large', 'No issues'),
(1002, 10003, 'Bella', 'Labrador', 4, 'Large', 'Allergic to chicken'),
(1003, 10004, 'Charlie', 'Poodle', 2, 'Small', 'Healthy'),
(1004, 10005, 'Rocky', 'Bulldog', 6, 'Medium', 'Joint sensitivity'),
(1005, 10006, 'Lucy', 'Beagle', 3, 'Small', 'Healthy'),
(1006, 10007, 'Daisy', 'Husky', 5, 'Large', 'Needs regular exercise'),
(1007, 10008, 'Milo', 'Shih Tzu', 2, 'Small', 'Healthy'),
(1008, 10009, 'Luna', 'Rottweiler', 4, 'Large', 'Healthy'),
(1009, 10010, 'Cooper', 'Boxer', 3, 'Medium', 'Mild allergies'),
(1010, 10011, 'Sadie', 'Dachshund', 1, 'Small', 'Healthy');
INSERT INTO Employee (employee_id, name, phone, email, hire_date)
VALUES
(1, 'Katy', '5656578978', 'katy1@lana.org', '2024-03-06'),
(2, 'John Miller', '3015551111', 'john@lana.org', '2024-04-10'),
(3, 'Sarah Lee', '3015552222', 'sarah@lana.org', '2024-05-15'),
(4, 'David Kim', '3015553333', 'david@lana.org', '2024-06-20'),
(5, 'Emma Brown', '3015554444', 'emma@lana.org', '2024-07-25'),
(6, 'James White', '3015555555', 'james@lana.org', '2024-08-01'),
(7, 'Olivia Green', '3015556666', 'olivia@lana.org', '2024-08-15'),
(8, 'Noah Scott', '3015557777', 'noah@lana.org', '2024-09-01'),
(9, 'Ava Wilson', '3015558888', 'ava@lana.org', '2024-09-10'),
(10, 'Liam Davis', '3015559999', 'liam@lana.org', '2024-09-20'),
(11, 'Sophia Clark', '3015550000', 'sophia@lana.org', '2024-09-25');
INSERT INTO Payment (payment_id, customer_id, walk_id, amount, payment_date, method, status)
VALUES
(1, 10001, 20001, 49.99, '2025-09-05', 'Card', 'Pending'),
(2, 10002, 20002, 39.99, '2025-09-06', 'Cash', 'Paid'),
(3, 10003, 20003, 59.99, '2025-09-07', 'Card', 'Paid'),
(4, 10004, 20004, 29.99, '2025-09-08', 'Card', 'Pending'),
(5, 10005, 20005, 45.00, '2025-09-09', 'Cash', 'Paid'),
(6, 10006, 20006, 50.00, '2025-09-10', 'Card', 'Paid'),
(7, 10007, 20007, 60.00, '2025-09-11', 'Card', 'Pending'),
(8, 10008, 20008, 35.50, '2025-09-12', 'Cash', 'Paid'),
(9, 10009, 20009, 40.00, '2025-09-13', 'Card', 'Paid'),
(10, 10010, 20010, 55.00, '2025-09-14', 'Card', 'Pending'),
(11, 10011, 20011, 48.00, '2025-09-15', 'Cash', 'Paid');
INSERT INTO Walk_details (walk_id, dog_id, employee_id, walk_date, walk_time, duration, notes)
VALUES
(20001, 1000, 1, '2025-09-05', '10:15', 45 , 'NA'),
(20002, 1001, 1, '2025-09-06', '09:30', 30, 'Good behavior'),
(20003, 1002, 1, '2025-09-07', '11:00', 60 , 'Tired after walk'),
(20004, 1003, 1, '2025-09-08', '08:45', 40 , 'Very active'),
(20005, 1004, 1, '2025-09-09', '10:00', 50 , 'Normal walk'),
(20006, 1005, 1, '2025-09-10', '09:15', 35 , 'Friendly'),
(20007, 1006, 1, '2025-09-11', '07:30', 70 , 'High energy'),
(20008, 1007, 1, '2025-09-12', '10:45', 25 , 'Short walk'),
(20009, 1008, 1, '2025-09-13', '12:00', 55 , 'Good stamina'),
(20010, 1009, 1, '2025-09-14', '09:00', 45 , 'Calm'),
(20011, 1010, 1, '2025-09-15', '08:00', 30 , 'Training walk');
DESCRIBE Dog_info;
DESCRIBE Payment;
describe walk_details; 
SELECT * FROM EMPLOYEE;
SELECT * FROM DOG_INFO