-- PROBLEM STATEMENT
-- ============================================================
-- A company maintains data of laptops available across different cities.
-- The company wants to store laptop details such as brand, model, processor,
-- RAM, storage, price, release year, and city. This data will help the company
-- query and analyze laptops based on specifications, price ranges, years,
-- and locations to support decision-making.

use mar25;
-- TABLE CREATION

 CREATE TABLE laptops (
 id INT NOT NULL UNIQUE,
 brand VARCHAR(20) NOT NULL,
 model VARCHAR(50) NOT NULL,
 processor VARCHAR(30) NOT NULL,
 ram INT NOT NULL CHECK (ram >= 4), -- RAM in GB
 storage INT NOT NULL CHECK (storage >= 128), -- Storage in GB
 price INT NOT NULL CHECK (price > 20000),
 release_year INT NOT NULL,
 city VARCHAR(20) NOT NULL DEFAULT 'Delhi'
 );


select * from laptops;


-- INSERT RECORDS (15 rows)
-- ================================================
 INSERT INTO laptops (id, brand, model, processor, ram, storage, price, release_year, city)
VALUES
 (1, 'Dell', 'Inspiron 15', 'Intel i5', 8, 512, 55000, 2021, 'Mumbai'),
 (2, 'HP', 'Pavilion 14', 'Intel i3', 8, 256, 45000, 2020, 'Delhi'),
 (3, 'Lenovo', 'ThinkPad E14', 'Intel i7', 16, 512, 72000, 2022, 'Pune'),
 (4, 'Asus', 'VivoBook 15', 'AMD Ryzen 5', 8, 512, 60000, 2021, 'Bangalore'),
 (5, 'Apple', 'MacBook Air M1', 'Apple M1', 8, 256, 90000, 2021, 'Hyderabad'),
 (6, 'Acer', 'Aspire 7', 'Intel i5', 16, 1024, 68000, 2020, 'Chennai'),
 (7, 'MSI', 'GF63 Thin', 'Intel i7', 16, 512, 78000, 2022, 'Jaipur'),
 (8, 'Dell', 'XPS 13', 'Intel i7', 16, 1024, 120000, 2023, 'Lucknow'),
 (9, 'HP', 'Omen 16', 'AMD Ryzen 7', 32, 1024, 150000, 2023, 'Kolkata'),
 (10, 'Lenovo', 'IdeaPad 3', 'Intel i3', 8, 256, 42000, 2019, 'Delhi'),
 (11, 'Asus', 'ROG Strix G15', 'AMD Ryzen 9', 32, 1024, 160000, 2023, 'Pune'),
 (12, 'Apple', 'MacBook Pro M2', 'Apple M2', 16, 512, 170000, 2023, 'Mumbai'),
 (13, 'Acer', 'Swift 3', 'Intel i5', 8, 256, 50000, 2021, 'Hyderabad'),
 (14, 'MSI', 'Modern 14', 'Intel i5', 8, 512, 62000, 2020, 'Chennai'),
 (15, 'Dell', 'Latitude 7400', 'Intel i7', 16, 512, 95000, 2019, 'Bangalore');
 
 -- 1) Display all records from the laptops table
 select * from laptops;
 
 -- 2) Display only the brand, model, and price of all laptops.
select brand, model, price from laptops;

-- 3) Show all laptops where the brand is 'Dell'.
select * from laptops where brand = 'Dell';

-- 4) Display all laptops with price greater than 80,000.
select * from laptops where price > 80000;

-- 5) Show all laptops where the city is not 'Delhi'.
select * from laptops where city != 'Delhi';

-- 6) List laptops where ram is between 8 and 16 GB (inclusive).
select * from laptops where ram between 8 and 16;

-- 7) Display laptops where the release_year is either 2019 or 2023.
-- 13) Display laptops with release_year >= 2021 AND price < 70000.


-- 8) Show laptops with brand = 'Apple' AND price > 100000.
select * from laptops where brand = 'apple' and price > 100000;

-- 9) Show laptops with brand equal to 'HP' OR 'Lenovo'.
select * from laptops where brand = 'hp' or 'lenovo';

-- 10) Display laptops where storage is not 512 GB.
 select * from laptops where storage != 512 ;
 
 -- 11) Show laptops where the city is either 'Mumbai', 'Pune', or 'Bangalore'.
select * from laptops where city in ('mumbai', 'pune', 'Bangalore');

-- 12) List laptops where the processor contains the word 'Intel'.
 select * from laptops where processor like 'intel%' ;
 
 -- 13) Display laptops with release_year >= 2021 AND price < 70000.
select * from laptops where release_year >= 2021 AND price < 70000;

-- 15) Display all laptops where price is NOT BETWEEN 40000 AND 70000.
select * from laptops where price  NOT BETWEEN 40000 AND 70000;

-- 14) Show brand and city, renaming them as Company and Location.
select brand as company, city as location
from laptops;

select * from laptops;







 
 