SELECT * FROM cars.car_dekho;
-- total cars: to get total count of total records --
select count(*) from cars.car_dekho;
-- the manager asked the employee how many cars is available in 2023 --
select count(*) from cars.car_dekho where year = 2023;
-- the manager asked the employee how many cars is available in 2020,2021,2022 --
select count(*) from cars.car_dekho where year in (2020,2021,2022);
-- GROUP BY --
select count(*) from cars.car_dekho where year in (2020,2021,2022) group by year;
-- client asked me to print the total of all the cars by year. I don't see all the details --
select year, count(*) from cars.car_dekho group by year;
-- client asked to car dealer agent how many diesel cars will be there in 2023? --
select count(*) from cars.car_dekho where year = 2023 and fuel = "Diesel";
-- client asked to car dealer agent how many petrol cars will be there in 2020? --
select count(*) from cars.car_dekho where year = 2020 and fuel = "Petrol";
-- the manager told the employee to give a print of all the fuel cars (petrol,diesel,CNG) come by all year --
select count(*) from cars.car_dekho where fuel = "Petrol" group by year;
select count(*) from cars.car_dekho where fuel = "Diesel" group by year;
select count(*) from cars.car_dekho where fuel = "CNG" group by year;

-- manager said there were more than 100 cars in a given year, which year had more than 100 cars? -- 
select year, count(*) from cars.car_dekho group by year having count(*)>100;
select year, count(*) from cars.car_dekho group by year having count(*)<50;

-- the manager said to the employees all cars count details between 2015 and 2023; we need complete list --
select count(*) from cars.car_dekho where year between 2015 and 2023;
-- the manager said to the employees all cars count details between 2015 and 2023; we need complete list --
select * from cars.car_dekho where year between 2015 and 2023;

-- END --







