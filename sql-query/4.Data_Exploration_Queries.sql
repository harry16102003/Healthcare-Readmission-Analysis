-- Use the database you created for the project
USE Healthcare_Analysis;
GO

-- 1. Check the total number of records in each table.
-- This is a quick way to confirm that your data was imported correctly.
SELECT 'patients' AS TableName, COUNT(*) AS RecordCount FROM patients
UNION ALL
SELECT 'admissions', COUNT(*) FROM admissions
UNION ALL
SELECT 'diagnoses', COUNT(*) FROM diagnoses
UNION ALL
SELECT 'medications', COUNT(*) FROM medications;
GO

-- 2. Find the top 10 most common discharge dispositions.
-- This helps you understand where patients are going after their hospital stay.
SELECT
    discharge_disposition,
    COUNT(*) AS NumberOfAdmissions
FROM
    admissions
GROUP BY
    discharge_disposition
ORDER BY
    NumberOfAdmissions DESC
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;
GO

-- 3. Find the average length of stay by admission type.
-- This can highlight differences in hospital stay duration for different types of admissions.
SELECT
    p.admission_type,
    AVG(a.length_of_stay) AS AverageLengthOfStay
FROM
    admissions AS a
JOIN
    patients AS p
    ON a.patient_id = p.patient_id
GROUP BY
    p.admission_type
ORDER BY
    AverageLengthOfStay DESC;
GO

-- 4. Identify patients with multiple admissions (potential readmissions).
-- This is a foundational query for the readmission analysis part of the project.
SELECT
    patient_id,
    COUNT(admission_id) AS TotalAdmissions
FROM
    admissions
GROUP BY
    patient_id
HAVING
    COUNT(admission_id) > 1
ORDER BY
    TotalAdmissions DESC;
GO

-- 5. Find the most common diagnoses.
-- This helps in understanding the primary health issues in the patient population.
SELECT
    ICD9_code,
    description,
    COUNT(*) AS NumberOfDiagnoses
FROM
    diagnoses
GROUP BY
    ICD9_code, description
ORDER BY
    NumberOfDiagnoses DESC
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;
GO

-- 6. List all medications for a specific admission (e.g., admission_id = 1).
-- This demonstrates how to join tables and retrieve detailed information.
SELECT
    m.drug_name,
    m.dosage,
    m.start_date,
    m.end_date
FROM
    medications AS m
WHERE
    m.admission_id = 1;
GO
