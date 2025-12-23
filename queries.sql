select b.booking_id, u.name as customer_name, v.name as vehicle_name, b.start_date, b.end_date, b.status from bookings as b
inner join users as u on u.user_id = b.user_id
inner join vehicles as v on v.vehicle_id = b.vehicle_id;


select * from vehicles v
where not exists (
  select 1
  from bookings b
  where b.vehicle_id = v.vehicle_id 
);


select * from vehicles where type = 'bike' and status = 'available';


select v.name as vehicle_name, count(b.booking_id) as total_bookings
from vehicles v
inner join bookings b on v.vehicle_id = b.vehicle_id
group by v.vehicle_id, v.name
having count(b.booking_id) > 2;
