--  create database
CREATE Database NY House Dataset;

-- create Table from csv file
CREATE TABLE ny_house_dataset;

--  data inspecting
SELECT 
    *
FROM
    ny_house_dataset;

--  Analysis
--  Generic Questions
-- How many unique types of property are for sale?

SELECT DISTINCT
    TYPE
FROM
    ny_house_dataset;

--Which locality are these properties in?

SELECT 
	distinct LOCALITY
FROM ny_house_dataset;

-- Complex Questions
-- Which property is the least expensive? Which property is the most expensive?

SELECT 
    TYPE, PRICE
FROM
    ny_house_dataset
ORDER BY PRICE ASC
LIMIT 1;

-- Most

SELECT 
    TYPE, PRICE
FROM
    ny_house_dataset
ORDER BY PRICE DESC
LIMIT 1;


-- What is the frequency count for each property?

SELECT 
    TYPE AS most_frequent_value, COUNT(*) AS frequency
FROM
    ny_house_dataset
GROUP BY TYPE
ORDER BY frequency DESC


-- Which cities in NY are the brokerages located in? Which brokerages have the most? Which ones have the least?

SELECT 
    BROKERTITLE, LOCALITY, COUNT(*) AS frequency
FROM
    ny_house_dataset
GROUP BY BROKERTITLE , LOCALITY
ORDER BY frequency ASC;

-- Group each property w/ their amenities from which street they are found in order

SELECT 
    TYPE, PRICE, BEDS, BATH, STREET_NAME, COUNT(*) AS frequency
FROM
    ny_house_dataset
GROUP BY TYPE , PRICE , BEDS , BATH , STREET_NAME
ORDER BY frequency DESC;



-- Which type of property has the least amount of square feet?

SELECT 
    TYPE, PROPERTYSQFT
FROM
    ny_house_dataset
GROUP BY TYPE , PROPERTYSQFT
ORDER BY PROPERTYSQFT ASC
LIMIT 1;








