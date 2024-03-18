#Write the SQL statement to all countries in the world.country table that contain the word "and"
#in the name. The "and" must appear as a conjunction of two names, it must not appear within 
#the country name. Do not use a regular expression. 
#Also display the Region, Population, and LifeExpectancy.

SELECT Name, Region, Population, LifeExpectancy
From world.country
Where Name like "% and %" 
;