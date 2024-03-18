#Write an SQL SELECT statement that will return the following: Name, Region, SurfaceArea in square miles as SurfaceAreaSM, Population, population density per square mile as Density, life expectancy.
#Include only those countries where the population density is greater than 750 people per square mile and the life expectancy is less than 70.
#Sort in order by descending the highest density, then by region and name.
#For reference, 1 sq. kilometer = 0.38610216 sq. mile Formula: SurfaceArea * .38610216
#For reference population density is the population / area Formula: Population/(SurfaceArea * .38610216)


SELECT Name, Region, (SurfaceArea*0.38610216) as SurfaceAreaSM, Population, Population/(SurfaceArea * .38610216) AS Density, LifeExpectancy
FROM world.country
WHERE Population/(SurfaceArea * .38610216) >750 AND LifeExpectancy < 70
ORDER BY Density desc, Region, Name
;
