#Write an SQL SELECT statement that will return the following: 
#Name, Continent, Region, Population and percent of population for all of the countries 
#in the world.country table that are in North America.

#To calculate the percentage of population, 
#divide the population by the sum of the population of countries that are in North America. 
#Take that result (population/sum) and multiply by 100 to get a percentage number.
#Hint: the value that you use for the denominator (the sume of the population) can be an embedded SELECT statement.
#Sort in order by Region descending and by Name descending.

SELECT Name, Continent, Region, Population,
(Population / 
(SELECT SUM(Population) 
FROM world.country 
WHERE Continent = 'North America')
) * 100 AS "PercentPop"

FROM world.country
WHERE Continent = 'North America'
ORDER BY Region DESC, Name DESC
LIMIT 10
;
