#In the world.country table, the SurfaceArea is given in square kilometers. 
#Write an SQL SELECT statement to return the country name, region, surface area 
#in square kilometers as SurfaceAreaSK, and surface area in square miles as SurfaceAreaSM. 
#Return the data in order by descending SurfaceAreaSM.

SELECT Name, Region, SurfaceArea AS SurfaceAreaSK, (SurfaceArea*0.38610216) as SurfaceAreaSM
FROM world.country
ORDER BY SurfaceAreaSM desc
;