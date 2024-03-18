#Write the SQL statement to display the country name (Name) and the life expectancy (LifeExpectancy) 
#in the world.country schema for the countries with a life expectancy of 50 (years) or less. 
#Display the results with the shortest (lowest) life expectancy first.

SELECT Name, LifeExpectancy
FROM world.country
WHERE LifeExpectancy <= 50
AND LifeExpectancy IS NOT NULL
ORDER BY LifeExpectancy
;