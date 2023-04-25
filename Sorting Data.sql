-- find top 5 samsung phones with biggest screen size
SELECT model,screen_size FROM campusx.smartphones where brand_name = 'samsung'
order by screen_size desc limit 5;

-- sort all the phone in descending order of number of total cameras
select model,num_front_cameras + num_rear_cameras as 'total_cameras'
from campusx.smartphones
order by total_cameras desc;

-- sort data on the basis of ppi in decreasing order
select model ,
round(sqrt (resolution_width*resolution_width + resolution_height+resolution_height)/screen_size) as ppi
from campusx.smartphones
order by ppi asc;

-- find phone with 2nd largest battery
select model, battery_capacity
from campusx.smartphones
order by battery_capacity desc limit 1,1;

-- find phone with 2nd lowest battery
select model, battery_capacity
from campusx.smartphones
order by battery_capacity asc limit 1,1;

-- find the name and rating of the first worst rated apple phone
select model, rating
from campusx.smartphones
where brand_name ='apple'
order by rating asc limit 1;

-- sort phones alphabetically and then on the basis of rating in desc order
select *from campusx.smartphones
order by brand_name asc, rating desc;

-- sort phones alphabetically and then on the basis of price in asc order
select *from campusx.smartphones
order by brand_name asc, price asc;


