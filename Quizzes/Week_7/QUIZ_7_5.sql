#The SELECT statement shown below retrieves a subset of the countries 
#where Elisabeth II is the head of state.
#Write the WHERE clause so that it does not use a CASE expression. 
#Submit the complete SELECT statement with the reworked WHERE clause.

SELECT NAME, Continent, Region, HeadOfState, GovernmentForm
FROM world.country
WHERE HeadOfState LIKE "El%" 
AND (
(Continent = 'Oceania' AND Region NOT LIKE '%esia') 
OR Continent = 'Africa' 
OR Continent = 'Europe' 
OR (Continent = 'North America' AND Region = 'Caribbean')
OR Continent = 'South America'
)



#1 = 
# CASE 
#	WHEN Continent = "Oceania" AND Region NOT LIKE "%esia" THEN 1
#    WHEN Continent = "Africa" THEN 1
#    WHEN Continent = "Europe" THEN 1 
#    WHEN Continent = "North America" AND Region = "Caribbean" THEN 1
#    WHEN Continent = "South America" THEN 1
# END
ORDER BY Continent, Name;