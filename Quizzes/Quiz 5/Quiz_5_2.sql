#Write the SQL statement to display the country name (Name) and the population (Population) 
#in the world.country schema for the top 20 countries with the largest (highest) population.

SELECT Name, Population
FROM world.country
ORDER BY Population desc
Limit 20;