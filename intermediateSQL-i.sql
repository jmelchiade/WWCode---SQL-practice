
-- INTERMEDIATE  PART I [JAN 27]
-- Basics and Aggregations


-- Show the first names of our patients in alphabetical order

SELECT first_name
FROM patients
order by first_name asc;

-- Show the total number of doctors

SELECT COUNT(*) as total_doctors
FROM doctors

SELECT AVG(weight)
FROM patients

SELECT MAX(height)
FROM patients

-- Show the total number of specialities 

-- Show the average weight of all the patients

SELECT city, COUNT(patient_id) AS total_patients
FROM patients
GROUP BY city
ORDER BY total_patients DESC, city ASC;

-- What is the height of our tallest patient


--Show the city and the total number of patients in the city. Order from most to least patients and then by city name ascending.

SELECT province_id, SUM(height) AS total_height
FROM patients
GROUP BY province_id
HAVING total_height >= 7000;

--Entering the realm of complex data wrangling

--Show the province_id(s), sum of height; where the total sum of its patient's height is greater than or equal to 7,000.

--Show first name, last name and gender in a way that wherever gender is F, it is shown as Female

SELECT first_name, last_name,
    CASE WHEN gender = 'F' then 'Female'
ELSE gender END AS gender_new
FROM patients;