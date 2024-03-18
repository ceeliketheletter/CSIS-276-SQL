SELECT * FROM world.city;
Select Name, Population from world.city;
Select Name AS City, Population from world.city;
SELECT 
    CONCAT(Name, ', ', Continent, ', ', Region) AS "Country and Location"
FROM world.country;

Select Name,
    (YEAR(CURRENT_DATE()) - IndepYear) AS "Years Independent"
FROM
    world.country;
