create database ola;
use ola;

-- retrieve all successful booking
create view successful_booking as
select * from booking 
where booking_status = 'success';

-- retrieve all successful booking ans
select * from successful_booking;

-- find the arverage ride of distance for each vehicle :
create view ride_distancefor_each_vehicle as
select vehicle_type, avg(ride_distance)
as avg_distance from booking
group by vehicle_type;

-- find the arverage ride of distance for each vehicle ans
select * from ride_distancefor_each_vehicle;

-- get the total number of canceled rides by customers:
create view canceled_rides_by_customer as
select count(*) from booking 
where booking_status = 'canceled by customer';

-- get the total number of canceled rides by customers:
select * from canceled_rides_by_customer;

-- list the top 5 customer who booked the highest number of rides:
create view top_5_customer as
select customer_id, count(booking_id) as total_rides
from booking
group by customer_id 
order by total_rides desc limit 5 ;

-- list the top 5 customer who booked the highest number of rides:

-- get the number of rides canceled by drivers by due to personal and car-releted issues:
create view canceled_by_dirvers_Personal_Car_related_issue as
select count(*) from booking
where Canceled_Rides_by_Driver = 'Personal & Car related issue';

-- get the number of rides canceled by drivers by due to personal and car-releted issues:
select * from canceled_by_dirvers_Personal_Car_related_issue ;

-- find the maximum and minimum driver for prime sedan booking:
create view max_aur_Rating as
select max(Driver_Ratings) as max_rating,
min(Driver_Ratings) as min_rating
from booking where vehicle_type = 'prime sedan';

-- find the maximum and minimum driver for prime sedan booking:
select * from max_aur_Rating;

-- retrieve all rides where payment was using upi:
create view using_payment_methor as
select * from booking
where payment_method ='upi';

-- retrieve all rides where payment was using upi:
select * from using_payment_methor;

-- find the average customer rating per vehicle type:
create view avg_rating_vehicle as
select Vehicle_type , avg(customer_rating) as avg_customer_rating
from booking
group by Vehicle_type;

-- find the average customer rating per vehicle type:
select * from avg_rating_vehicle;

-- calculate the total booking value of rides completed successfully:
create view total_successfully_rides_value as
select sum(Booking_Value) as total_successful_value
from booking
where Booking_Status = 'success';

-- calculate the total booking value of rides completed successfully:
select * from total_successfully_rides_value;

-- list all incomplete rides along with the reson:
create view Incomplete_Rides_Reason as
select Booking_id, Incomplete_Rides_Reason 
from booking 
where Incomplete_Rides = 'yes';

-- list all incomplete rides along with the reson:
select * from Incomplete_Rides_Reason;
 














