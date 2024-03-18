#Write the SQL statement to display the country name (Name) and the surface area (SurfaceArea)
#in the world.country schema for all of the countries that are located in North America. 
#Order the result by the highest surface area number

SELECT Name, SurfaceArea
FROM world.country
WHERE Continent = 'North America'
Order By SurfaceArea desc
;
#Limit 10;