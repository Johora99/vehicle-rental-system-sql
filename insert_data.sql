insert into users (name, email, phone, password, role) values
('Admin User', 'admin@example.com', '01710000001', 'admin@123', 'Admin'),
('Fatima Rahman', 'fatima@gmail.com', '01820000002', 'fatima@123', 'Customer'),
('Ayesha Khan', 'ayesha.khan@gmail.com', '01640000003', 'ayesha@123', 'Customer'),
('Rahim Uddin', 'rahim.uddin@gmail.com', '01550000004', 'rahim@123', 'Customer'),
('Sadia Islam', 'sadia.islam@gmail.com', '01960000005', 'sadia@123', 'Customer'),
('Tanvir Ahmed', 'tanvir.ahmed@gmail.com', '01770000006', 'tanvir@123', 'Customer'),
('Nusrat Jahan', 'nusrat.jahan@gmail.com', '01880000007', 'nusrat@123', 'Customer'),
('Imran Hossain', 'imran.hossain@gmail.com', '01690000008', 'imran@123', 'Customer'),
('Mehedi Hasan', 'mehedi.hasan@gmail.com', '01510000009', 'mehedi@123', 'Customer'),
('Rafiul Islam', 'rafiul.islam@gmail.com', '01920000010', 'rafiul@123', 'Customer');


insert into vehicles 
(name, type, model, registration_number, rental_price, status)
values
('Toyota Corolla', 'car', '2022', 'DHA-1234', 4500.00, 'available'),
('Honda Civic', 'car', '2021', 'DHA-2345', 5000.00, 'rented'),
('Suzuki Alto', 'car', '2020', 'DHA-3456', 3000.00, 'maintenance'),
('Yamaha R15', 'bike', '2023', 'BIKE-1122', 1500.00, 'available'),
('Honda CBR 150R', 'bike', '2022', 'BIKE-2233', 1800.00, 'rented'),
('Bajaj Pulsar 160', 'bike', '2021', 'BIKE-3344', 1400.00, 'available'),
('Isuzu N-Series', 'truck', '2019', 'TRK-4455', 8500.00, 'available'),
('Tata Ace', 'truck', '2020', 'TRK-5566', 7000.00, 'maintenance'),
('Mahindra Bolero Pickup', 'truck', '2021', 'TRK-6677', 7500.00, 'rented'),
('Hino 300', 'truck', '2022', 'TRK-7788', 9000.00, 'available'),
('Ford Ranger', 'truck', '2023', 'TRK-8899', 9500.00, 'available'),
('KTM Duke 200', 'bike', '2023', 'BIKE-4455', 2000.00, 'available'),
('Suzuki Swift', 'car', '2023', 'DHA-4567', 4800.00, 'available'),
('Royal Enfield Classic 350', 'bike', '2022', 'BIKE-5566', 2200.00, 'maintenance'),
('Mitsubishi Triton', 'truck', '2021', 'TRK-9900', 8800.00, 'rented');


insert into bookings
(user_id, vehicle_id, start_date, end_date, status, total_cost)
values
(2, 1, '2025-01-01', '2025-01-05', 'confirmed', 18000.00),
(4, 1, '2025-02-05', '2025-02-08', 'completed', 18000.00),
(5, 1, '2025-03-01', '2025-03-03', 'pending', 12000.00),
(4, 2, '2025-01-05', '2025-01-10', 'pending', 25000.00),
(1, 2, '2025-02-01', '2025-02-03', 'confirmed', 15000.00),
(5, 3, '2025-02-10', '2025-02-12', 'confirmed', 6000.00),
(3, 4, '2025-01-03', '2025-01-04', 'completed', 1500.00),
(6, 4, '2025-02-11', '2025-02-13', 'completed', 3000.00),
(6, 5, '2025-01-10', '2025-01-12', 'cancelled', 3600.00),
(3, 5, '2025-02-04', '2025-02-06', 'pending', 7200.00),
(8, 6, '2025-01-15', '2025-01-17', 'confirmed', 2800.00),
(5, 7, '2025-01-07', '2025-01-09', 'confirmed', 17000.00),
(7, 7, '2025-02-14', '2025-02-16', 'pending', 34000.00),
(9, 8, '2025-01-18', '2025-01-20', 'pending', 14000.00),
(8, 8, '2025-02-15', '2025-02-18', 'confirmed', 21000.00),
(10, 9, '2025-01-20', '2025-01-25', 'pending', 37500.00),
(9, 9, '2025-02-19', '2025-02-22', 'completed', 37500.00),
(2, 10, '2025-01-22', '2025-01-24', 'confirmed', 18000.00),
(1, 10, '2025-02-24', '2025-02-26', 'pending', 18000.00),
(3, 10, '2025-03-01', '2025-03-04', 'confirmed', 18000.00);