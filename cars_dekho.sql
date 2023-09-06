create schema cars;
use cars

-- ---Read Data----
select * from car_dekho

-- --Total Cars: To get a count of total records--
select count(*) from car_dekho

-- The manager asked the employee How many cars is available in 2023-- 
select count(*) from car_dekho
where year = 2023

-- The manager asked the employee How many cars is available in 2020,2021,2022--
select count(*) from car_dekho
where year = 2020
select count(*) from car_dekho
where year = 2021
select count(*) from car_dekho
where year = 2022

-- Another method--
select count(*) from car_dekho
where year in (2020,2021,2022)
group by year

-- Client asked me to print the total of all cars by year. I don't seel all the details
select year, count(*) from car_dekho
group by year

-- Client asked to car dealer agent How many diesel cars will there be in 2020?--
select count(*) as diesel_cars, year from car_dekho
where fuel = 'Diesel' and year = 2020

-- Client requested a car dealer agent How many petrol cars will there be in 2020?--
select count(*) as petrol_cars, year from car_dekho
where fuel = 'Petrol' and year = 2020

-- Manager told the employee to give a print all the fuel cars (petrol, diesel, and CNG) come by all year
select count(*) as total_cars, fuel as fuel_types, year from car_dekho
where fuel in ('Diesel', 'Petrol', 'CNG')
group by fuel, year

-- Manager said there were more than 100 cars in a given year, which year had more than 100 cars?
select count(*), year from car_dekho
group by year
having count(*)>100

-- Manager said to the employee All cars count details between 2015 and 2023. we need complete list
select count(*) as total_cars_count, year from car_dekho
group by year 
having year between 2015 and 2023

-- Manager said to the employee All cars count details between 2015 and 2023
select count(*) as total_cars_count from car_dekho
where year between 2015 and 2023