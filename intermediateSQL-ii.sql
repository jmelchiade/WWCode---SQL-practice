-- INTERMEDIATE  PART II [FEB 03]
-- JOIN & FILTERING AGGREGATIONS

-- Get all province id and province names from which we've had any patients

SELECT DISTINCT province_names.province.id, province_names.province_name
FROM patients
    LEFT JOIN province_names
    ON patients.province_id = province_names.province.id;


-- Do we have any provinces from which we do not have any patients?

SELECT DISTINCT province_names.province.id, province_names.province_name
FROM patients
    RIGHT JOIN province_names
    ON patients.province_id = province_names.province.id
--WHERE patients.province_id IS NULL;

-- Get the patient id and admission date of all the patients who have been admitted  
--skipped

-- Show patient_id, first_name, last_name from patients whose diagnosis is 'Dementia'.
-- Primary diagnosis is stored in the admissions table.

SELECT patients.patients_id, patients.first_name, patients.last_name, admissions.diagnosis
FROM patients
    JOIN admissions
    ON admissions.patient.id = patients.patient_id
WHERE diagnosis  = "Dementia"

-- Display the total number of patients from each province. Order by descending.

SELECT pr.province_name, COUNT(pa.patient_id) AS total_patients
FROM patients pa
    JOIN province_names pr
    ON pa.province_id = pr.province_id
GROUP BY pr.province_id
ORDER BY total_patients DESC
