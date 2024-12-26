-- 1. Find the oldest person

SELECT name, date_of_birth
FROM persons
ORDER BY date_of_birth ASC
LIMIT 1;

-- 2. Count the total number of persons

SELECT COUNT(*) AS total_persons
FROM persons;

-- 3. Count the number of persons by city

SELECT city, COUNT(*) AS person_count
FROM addresses
GROUP BY city
ORDER BY person_count DESC;

-- 4. List all persons living in Dhaka

SELECT p.name, p.unique_id
FROM persons p
JOIN addresses a ON p.id = a.person_id
WHERE a.city = 'Dhaka';

-- 5. Find all persons born after 1990

SELECT name, date_of_birth
FROM persons
WHERE date_of_birth > '1990-01-01';

-- 6. List all unique cities where people live

SELECT DISTINCT city
FROM addresses;

-- 7. Find the person with the most recent date of birth

SELECT name, date_of_birth
FROM persons
ORDER BY date_of_birth DESC
LIMIT 1;

-- 8. Count how many persons have addresses in each district

SELECT district, COUNT(*) AS person_count
FROM addresses
GROUP BY district
ORDER BY person_count DESC;

-- 11. Find all persons with a specific last name (e.g., "Hossain")

SELECT name, unique_id
FROM persons
WHERE name LIKE '%Hossain%';

-- 12. Find the person(s) who live in the same city as "Md. Ali"

SELECT p.name, a.city
FROM persons p
JOIN addresses a ON p.id = a.person_id
WHERE a.city = (
    SELECT a2.city
    FROM persons p2
    JOIN addresses a2 ON p2.id = a2.person_id
    WHERE p2.name = 'Md. Ali'
);
