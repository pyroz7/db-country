-- Esercizio numero 1 
SELECT *
FROM countries c 
WHERE c.name LIKE 'P%' AND c.area > 1000;

-- Esercizio numero 2 
SELECT count(*) as number_of_nations
FROM countries c;

-- Esercizio numero 3 
SELECT DISTINCT r.name
FROM regions r
JOIN continents  c ON r.continent_id = c.continent_id
WHERE c.name = 'Europe'
ORDER BY r.name ASC;

-- Esercizio numero 4 
SELECT count(*)
FROM regions r
JOIN continents c ON r.continent_id = c.continent_id
WHERE c.name = 'Africa';

-- Esercizio numero 5 
SELECT 	c.name 
FROM countries c
WHERE c.national_day IS NULL; 

-- Esercizio numero 6
SELECT c.name, r.name, c2.name  
FROM countries c 
JOIN regions r ON c.country_id = r.region_id  
JOIN continents c2 ON r.continent_id  = c2.continent_id  
ORDER BY c.name ASC; 

-- Esercizio numero 7
SELECT l.language
FROM countries c 
JOIN country_languages cl ON c.country_id = cl.country_id
JOIN languages l ON cl.language_id = l.language_id 
WHERE c.name = 'Albania';

-- Esercizio numero 8
SELECT AVG(cs.gdp) 
FROM countries c
JOIN country_stats cs ON c.country_id = cs.country_id 
WHERE cs.`year` >= 2000 AND cs.`year` <= 2010 AND c.name = 'United Kingdom';

-- Esercizio numero 9
SELECT *
FROM languages l 
JOIN country_languages cl ON l.language_id = cl.language_id 
JOIN countries c ON cl.country_id = c.country_id
WHERE l.`language` = 'Hindi'
ORDER BY c.area ASC;

-- Esercizio numero 10 
UPDATE countries SET national_day = '1946-06-02'
WHERE countries.name = 'Italy';

-- Esercizio numero 11
SELECT c.name, c.national_day 
FROM countries c 
WHERE c.national_day IS NOT NULL AND YEAR (national_day) < 1900
ORDER BY YEAR(c.national_day) DESC;

-- Esercizio numero 12
SELECT COUNT(*) 
FROM languages l
JOIN country_languages cl ON l.language_id = cl.language_id 
JOIN countries c ON cl.country_id = c.country_id 
WHERE c.name = 'Italy';

-- Esercizio numero 13
SELECT SUM(c.area) , AVG(c.area)
FROM regions r 
JOIN countries c ON r.region_id = c.region_id 
WHERE r.name = 'Antarctica';
