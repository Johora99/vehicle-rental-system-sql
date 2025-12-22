# Vehicle Rental System – Database Design & SQL Queries

## Overview
The Vehicle Rental System is a simplified database application designed to manage users, vehicles, and bookings for a vehicle rental service.

### This project demonstrates the following concepts:

- Database design and Entity-Relationship modeling (1-to-1, 1-to-Many, Many-to-1 relationships)
- Primary keys, foreign keys, and ENUM data types
- SQL queries using JOIN, EXISTS, WHERE, GROUP BY, and HAVING clauses

## Database Design

### Tables

1. **Users**

- Stores user information including role (Admin or Customer), name, email, phone, and password
- user_id is the primary key
- email is unique

2. **Vehicles**

- Stores vehicle details including name, type (car/bike/truck), model, registration number, rental     price, and availability status
- vehicle_id is the primary key
- registration_number is unique

3. **Bookings**

- Stores booking information linking users to vehicles
- Tracks start date, end date, booking status (pending, confirmed, completed, cancelled), and total cost
- booking_id is the primary key
- Foreign keys: user_id references users(user_id) and vehicle_id references vehicles(vehicle_id)


## SQL Queries & Solutions

### Query 1: JOIN – Retrieve booking information with customer name and vehicle name

```
select b.booking_id, u.name, v.vehicle_name, b.start_date, b.end_date, b.booking_status from bookings as b
inner join users as u on u.user_id = b.user_id
inner join vehicles as v on v.vehicle_id = b.vehicle_id;

```
**Explanation:**

- Uses INNER JOIN to combine bookings, users, and vehicles
- Returns booking ID, customer name, vehicle name, start & end date, and booking status

### Query 2: NOT EXISTS – Find vehicles that have never been booked

```
select * from vehicles v
where not exists (
  select 1
  from bookings b
  where b.vehicle_id = v.vehicle_id 
) and v.available_status <> 'rented';

```
**Explanation:**

- Uses NOT EXISTS to find vehicles with no related bookings
- Ensures the vehicle is not currently rented

### Query 3: WHERE – Retrieve all available vehicles of a specific type (e.g., cars)

``` 
select * from vehicles 
where vehicle_type = 'bike' and available_status = 'available';

```
**Explanation:**

- Uses WHERE clause to filter by vehicle type and availability
- Returns only available cars

### Query 4: GROUP BY & HAVING – Vehicles with more than 2 bookings

```
select vehicle_name, count(*) as total_bookings from vehicles as v 
inner join bookings as b on v.vehicle_id = b.vehicle_id 
group by vehicle_name having count(*) > 2;

```
**Explanation:**

- Uses GROUP BY to count bookings per vehicle
- Uses HAVING to filter vehicles with more than 2 bookings


## Conclusion

### This project demonstrates the ability to:

- Design a normalized database schema with appropriate relationships and constraints
- Insert realistic sample data for users, vehicles, and bookings
- Write advanced SQL queries using JOIN, EXISTS, WHERE, GROUP BY, and HAVING clauses
- Solve real-world scenarios in a Vehicle Rental System