-- INTERMEDIATE PT III [FEB 10]
-- SUBQUERIES, WINDOW FUNCTIONS, COMMON TABLE EXPRESSIONS (CTES)

-- Get the count of all doctors who treated a Female patient
SELECT
    COUNT (DISTINCT attending_doctor_id) AS n_doctors
FROM admissions
SELECT patient_id
FROM patients
WHERE gender = 'F'

-- Show patient_id, first_name, last_name from patients whose diagnosis is 'Dementia'.
-- Primary diagnosis is stored in the admissions table.

-- Show patient_id, first_name, last_name, and attending doctor's specialty.
-- Show only the patients who has a diagnosis as 'Epilepsy' and the doctor's first name is 'Lisa'
-- Check patients, admissions, and doctors tables for required information.

-- Get the running total of height of patients within each city

SELECT p.*,
    SUM(height) OVER (PARTITION BY city ORDER BY birth_date) AS running_total_height
FROM patients p
