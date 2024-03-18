#How many unique languages are in the worldcountrylanguage table?
#Of the unique languages, how many end with the letters "ian"?

SELECT COUNT(Distinct Language) as "Unique Languages"
FROM world.countrylanguage
ORDER BY Language
; 
SELECT COUNT(Distinct Language) as "Unique IAN Languages"
FROM world.countrylanguage
WHERE Language Like "%ian"
ORDER BY Language
; 