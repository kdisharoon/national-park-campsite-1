-- CAMPGROUND TABLE
-----------------------------------------------

select name, daily_fee
from campground; 
-- select name and daily fee of all campgrounds

select name, daily_fee
from campground
order by name;
-- select name and daily fee of all campgrounds ordered by campground name

select *
from campground
where daily_fee < '100';
-- select name, open from month, open to month, and daily fee of the campgrounds where daily fee is less than $100

select name, daily_fee
from campground
where open_from_mm = '01' and open_to_mm = '12';
-- select name and daily fee of the campgrounds where the campground is open all year long


-- PARK TABLE
-----------------------------------------------
select name, description
from park p
order by p.establish_date desc;
-- select name and description of all parks order by established date in descending order

select name, description
from park
where location = 'Ohio';
-- select name and description of all parks in Ohio

select name, description
from park
where location != 'Ohio';
-- select name and description of all parks NOT in Ohio

select sum(visitors) as total_visitors
from park;
-- select the total number of visitors for all parks

select avg(visitors) as avg_visitors
from park;
-- select the average number of visitors for all parks


-- SITE TABLE
-----------------------------------------------

select * 
from site 
where utilities 
is true
order by max_rv_length desc;
-- select all columns from site where utilities is true and order by max RV length with the largest coming first

select sum(site_number) as total_util_sites
from site
where utilities
is true;
-- select total number of sites that have utilities hook up


-- RESERVATION TABLE
-----------------------------------------------
select reservation_id, site_id, name, from_date, to_date
from reservation
where from_date between '2021-06-01' and '2021-06-30';
-- select reservation id, site id, name, from date, to date of the reservations where the checkin date is between the first and last day of the current month (hard coded month is ok)

select *
from reservation
where name like '% Reservation';
-- select all columns from reservation where name includes 'Reservation'

select sum(reservation_id) as total_reservations
from reservation;
-- select the total number of reservations in the reservation table

select reservation_id, site_id, name
from reservation
where site_id in (9, 20, 24, 45, 46);
-- select reservation id, site id, name of the reservations where site id is in the list 9, 20, 24, 45, 46

select from_date, sum(reservation_id) as number_of_res
from reservation r
group by r.from_date
order by r.from_date asc;
-- select the date and number of reservations for each date orderd by from_date in ascending order

