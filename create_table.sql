create database "Vehicle Rental System";
create type user_role AS ENUM ('Admin', 'Customer');

create table users (
  user_id serial primary key not null,
  name varchar(100) not null,
  email varchar(150) not null unique,
  phone varchar(20),
  password text not null,
  role user_role not null 
);

create type vehicle_type as enum ('car', 'bike', 'truck');
create type available_type as enum ('available', 'rented', 'maintenance');
create table vehicles (
  vehicle_id serial primary key not null,
  vehicle_name varchar(100) not null,
  vehicle_type vehicle_type not null,
  model varchar(50) not null,
  registration_number varchar(20) not null unique,
  rental_price numeric(10, 2) not null,
  available_status available_type not null
);


create type booking_type as enum ('pending', 'confirmed', 'completed', 'cancelled');
create table bookings (
  booking_id serial primary key not null,
  user_id int references users (user_id) not null,
  vehicle_id int references vehicles (vehicle_id) not null,
  start_date Date not null,
  end_date Date not null,
  booking_status booking_type not null,
  total_cost numeric(10, 2) check (total_cost > 0) not null,
  check (end_date > start_date)
  );