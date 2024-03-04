#Write the SQL statement to display the country name (Name), continent (Continent) 
#and independence year (IndepYear) 
#only for the countries that have an independence year value. 
#Display the results in ascending order first by the continent, then by the country name.

SELECT Name, Continent, IndepYear
FROM world.country
WHERE IndepYear IS NOT NULL
ORDER BY Continent, Name
;
#LIMIT 10;