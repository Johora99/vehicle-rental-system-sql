select b.booking_id, u.name, v.vehicle_name, b.start_date, b.end_date, b.booking_status from bookings as b
inner join users as u on u.user_id = b.user_id
inner join vehicles as v on v.vehicle_id = b.vehicle_id;



select * from vehicles v
where not exists (
  select 1
  from bookings b
  where b.vehicle_id = v.vehicle_id 
) and v.available_status <> 'rented';


select * from vehicles 
where vehicle_type = 'bike' and available_status = 'available';



select vehicle_name, count(*) as total_bookings from vehicles as v 
inner join bookings as b on v.vehicle_id = b.vehicle_id 
group by vehicle_name having count(*) > 2;