#In the "world" schema, the "city" table contains data about cities around the world. 
#Write an SQL SELECT statement that will return the following: city.CountryCode, city.Name, city.District, city.Population.
#Include only those cities where the population density per square mile of the country is greater than 750 and the life expectancy is less than 60.
#Sort in order by descending population.
#Using embedded select

SELECT city.CountryCode, city.Name, city.District, city.Population
FROM world.city
WHERE (
	SELECT country.Population/(country.SurfaceArea * .38610216)
	FROM world.country 
	WHERE city.CountryCode = country.Code) 
    > 750 

AND  (
	SELECT country.LifeExpectancy 
    FROM world.country
    WHERE city.CountryCode = country.Code) 
    < 60

ORDER BY city.Population desc
;