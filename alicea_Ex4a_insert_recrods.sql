USE lana_dog_walking;

INSERT INTO Walkers (first_name, last_name, email, phone, role, hire_date) VALUES
('Lana', 'Rivera', 'lana@pawsandgo.com', '(301) 555-0101', 'owner', '2024-01-01'),
('Marcus', 'Thompson', 'marcus@pawsandgo.com', '(301) 555-0102', 'walker', '2024-03-15'),
('Sofia', 'Delgado', 'sofia@pawsandgo.com', '(301) 555-0103', 'walker', '2024-04-01'),
('Jordan', 'Kim', 'jordan@pawsandgo.com', '(301) 555-0104', 'walker', '2024-05-10'),
('Priya', 'Patel', 'priya@pawsandgo.com', '(301) 555-0105', 'walker', '2024-06-20'),
('Derek', 'Washington', 'derek@pawsandgo.com', '(301) 555-0106', 'walker', '2024-07-05'),
('Camille', 'Nguyen', 'camille@pawsandgo.com', '(301) 555-0107', 'walker', '2024-08-12'),
('Tomas', 'Reyes', 'tomas@pawsandgo.com', '(301) 555-0108', 'walker', '2024-09-01'),
('Aisha', 'Johnson', 'aisha@pawsandgo.com', '(301) 555-0109', 'walker', '2024-10-15'),
('Brett', 'Collins', 'brett@pawsandgo.com', '(301) 555-0110', 'walker', '2024-11-01'),
('Nina', 'Flores', 'nina@pawsandgo.com', '(301) 555-0111', 'walker', '2025-01-10');

INSERT INTO Customers (first_name, last_name, phone, email, address, city, state, zip, emergency_contact) VALUES
('James', 'Carter', '(301) 555-0201', 'james.carter@email.com', '123 Maple Street', 'Rockville', 'MD', '20850', 'Sarah Carter (301) 555-0202'),
('Maria', 'Gonzalez', '(301) 555-0203', 'maria.g@email.com', '456 Oak Avenue', 'Gaithersburg', 'MD', '20877', 'Pedro Gonzalez (301) 555-0204'),
('David', 'Chen', '(240) 555-0205', 'david.chen@email.com', '789 Pine Road', 'Bethesda', 'MD', '20814', 'Linda Chen (240) 555-0206'),
('Ashley', 'Williams', '(301) 555-0207', 'ashley.w@email.com', '321 Elm Street', 'Silver Spring', 'MD', '20901', 'Kevin Williams (301) 555-0208'),
('Marcus', 'Brown', '(240) 555-0209', 'marcus.b@email.com', '654 Cedar Lane', 'Olney', 'MD', '20832', 'Tanya Brown (240) 555-0210'),
('Rachel', 'Davis', '(301) 555-0211', 'rachel.d@email.com', '987 Birch Blvd', 'Potomac', 'MD', '20854', 'Tom Davis (301) 555-0212'),
('Kevin', 'Martinez', '(240) 555-0213', 'kevin.m@email.com', '147 Walnut Way', 'Germantown', 'MD', '20874', 'Lisa Martinez (240) 555-0214'),
('Stephanie', 'Lee', '(301) 555-0215', 'steph.lee@email.com', '258 Spruce Court', 'Chevy Chase', 'MD', '20815', 'Brian Lee (301) 555-0216'),
('Andre', 'Jackson', '(240) 555-0217', 'andre.j@email.com', '369 Willow Drive', 'Wheaton', 'MD', '20902', 'Monica Jackson (240) 555-0218'),
('Lauren', 'White', '(301) 555-0219', 'lauren.w@email.com', '741 Chestnut Place', 'Kensington', 'MD', '20895', 'Chris White (301) 555-0220'),
('Omar', 'Hassan', '(240) 555-0221', 'omar.h@email.com', '852 Poplar Street', 'Derwood', 'MD', '20855', 'Fatima Hassan (240) 555-0222');

INSERT INTO Pets (customer_id, dog_name, breed, date_of_birth, size, notes) VALUES
(1, 'Rocky', 'German Shepherd', '2020-03-15', 'large', 'Friendly, loves fetch'),
(1, 'Bella', 'Beagle', '2021-07-22', 'small', 'Leash trained, very calm'),
(2, 'Coco', 'Poodle', '2019-11-10', 'medium', 'Allergic to chicken-based treats'),
(3, 'Max', 'Golden Retriever', '2018-05-30', 'large', 'Older dog, short walks only'),
(4, 'Luna', 'Chihuahua', '2022-01-14', 'small', 'Nervous around other dogs'),
(5, 'Duke', 'Labrador', '2020-08-19', 'large', 'High energy, needs long walks'),
(6, 'Daisy', 'Shih Tzu', '2021-04-03', 'small', 'Gets groomed every 4 weeks'),
(7, 'Zeus', 'Rottweiler', '2019-09-25', 'large', 'Leash aggressive, muzzle required'),
(8, 'Nala', 'French Bulldog', '2022-06-11', 'medium', 'Breathing issues, no intense exercise'),
(9, 'Buddy', 'Boxer', '2020-12-01', 'large', 'Very playful, good with other dogs'),
(10, 'Mia', 'Dachshund', '2021-03-18', 'small', 'Back problems, no stairs'),
(11, 'Thor', 'Husky', '2019-07-07', 'large', 'Escape artist, double check leash');

INSERT INTO Walks (pet_id, walker_id, scheduled_date, scheduled_time, duration_minutes, status, notes) VALUES
(1, 2, '2026-04-18', '08:00:00', 60, 'scheduled', 'Morning walk, stay on leash'),
(2, 3, '2026-04-18', '09:00:00', 30, 'scheduled', 'Short walk around the block'),
(3, 4, '2026-04-19', '10:00:00', 45, 'scheduled', 'No chicken treats'),
(4, 2, '2026-04-19', '08:30:00', 30, 'scheduled', 'Short walk only, older dog'),
(5, 5, '2026-04-20', '11:00:00', 30, 'scheduled', 'Keep away from other dogs'),
(6, 3, '2026-04-20', '09:30:00', 60, 'completed', 'Went well, very energetic'),
(7, 6, '2026-04-21', '08:00:00', 45, 'completed', 'Normal walk, no issues'),
(8, 2, '2026-04-21', '10:00:00', 45, 'scheduled', 'Muzzle required, check before leaving'),
(9, 7, '2026-04-22', '09:00:00', 30, 'scheduled', 'Easy pace, no intense exercise'),
(10, 4, '2026-04-22', '10:30:00', 60, 'completed', 'Very playful today'),
(11, 5, '2026-04-23', '08:00:00', 30, 'scheduled', 'Avoid stairs at pickup'),
(12, 6, '2026-04-23', '09:00:00', 60, 'scheduled', 'Double check leash before release');

INSERT INTO Payments (walk_id, amount, payment_date, payment_method, payment_status) VALUES
(1, 25.00, '2026-04-18', 'card', 'pending'),
(2, 15.00, '2026-04-18', 'Venmo', 'pending'),
(3, 20.00, '2026-04-19', 'cash', 'pending'),
(4, 15.00, '2026-04-19', 'card', 'pending'),
(5, 15.00, '2026-04-20', 'Venmo', 'pending'),
(6, 25.00, '2026-04-20', 'cash', 'paid'),
(7, 20.00, '2026-04-21', 'card', 'paid'),
(8, 20.00, '2026-04-21', 'Venmo', 'pending'),
(9, 15.00, '2026-04-22', 'cash', 'pending'),
(10, 25.00, '2026-04-22', 'card', 'paid'),
(11, 15.00, '2026-04-23', 'Venmo', 'pending'),
(12, 25.00, '2026-04-23', 'cash', 'pending');

SELECT * FROM Payments;
