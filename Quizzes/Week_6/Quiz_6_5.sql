#Write an SQL SELECT statement that will return the following from the country table: 
#Name, Region, Population, LifeExpectancy. 
#Include only those countries where English is the official language 
#and the population is greater than 1 million.
#Hint: You are displaying the results for the 'country' table, based on a condition from the 'countryLanguage' table. 
#You will need to use an embedded SELECT (see video Session 6 Part 3)

SELECT Name, Region, Population, LifeExpectancy
FROM world.country
WHERE Code IN(
	SELECT countrylanguage.CountryCode
    FROM world.countrylanguage
    WHERE countrylanguage.Language = 'English'
    AND countryLanguage.IsOfficial = 'T')

AND Population > 1000000 
ORDER BY Name
;