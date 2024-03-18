#Retrieve the following data from the country table: 
#Name, Continent, Region, HeadOfState, GovernmentForm. 
#Select only those rows where Elisabeth II is the head of state.
#Sort the rows in order to simulate the sun rising over the countries, starting near the International Data Line(out in the Pacific Ocean). 
#The sort order will follow the sun, from east to west, over the countries.

#Sort the countries in this order, using the Continent and Region values:
#Oceania/Polynesia
#Oceania/Melansia
#Oceania/[all others]
#Africa/Eastern Africa
#Africa/Western Africa
#Europe
#North America/Caribbean
#North America/Central America
#North America/[all others]
#[all others]
#After sorting by the Continent/Region values, sort by the Name.

SELECT Name, Continent, Region, HeadOfState, GovernmentForm
FROM world.country
WHERE HeadOfState = 'Elisabeth II'
ORDER BY 
CASE 
	WHEN Continent = 'Oceania' AND Region = 'Polynesia' THEN 1
	WHEN Continent = 'Oceania' AND Region = 'Melanesia' THEN 2
	WHEN Continent = 'Oceania' THEN 3
	WHEN Continent = 'Africa' AND Region = 'Eastern Africa' THEN 4
	WHEN Continent = 'Africa' AND Region = 'Western Africa' THEN 5
	WHEN Continent = 'Europe' THEN 6
	WHEN Continent = 'North America' AND Region = 'Caribbean' THEN 7
	WHEN Continent = 'North America' AND Region = 'Central America' THEN 8
	WHEN Continent = 'North America' THEN 9
	ELSE 10
END, 
Name
;
