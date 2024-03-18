#Using the country table, write a SELECT statement to return 
#the Name, Continent, Region, SurfaceArea, Population,
#and a column named "Density". Return the data in order of the country name.

#density = Population / SurfaceArea
#If density is 100 or less, set Density to "Not Crowded"
#If density is over 100 and less than or equal to 500, set Density to "Not too crowded"
#If density is over 500 and less than or equal to 1000, set Density to "Crowded"
#If density is over 1000, set Density to "Very Crowded"

SELECT Name, Continent, Region, SurfaceArea, Population, (Population / SurfaceArea) AS Density,
    CASE 
        WHEN (Population / SurfaceArea) <= 100 THEN 'Not Crowded'
        WHEN (Population / SurfaceArea) <= 500 THEN 'Not too crowded'
        WHEN (Population / SurfaceArea) <= 1000 THEN 'Crowded'
        ELSE 'Very Crowded'
    END AS "How Crowded"
FROM world.country
ORDER BY Name
LIMIT 12;