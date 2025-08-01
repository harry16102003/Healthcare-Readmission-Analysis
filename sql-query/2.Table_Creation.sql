-- Use the database you created for the project
USE Healthcare_Analysis;
GO

-- Create the patients table
-- This table contains demographic information for each patient.
-- patient_id is the primary key.
CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    age INT,
    gender VARCHAR(50),
    ethnicity VARCHAR(50),
    admission_type VARCHAR(50)
);

-- Create the admissions table
-- This table tracks each patient admission and its outcome.
-- admission_id is the primary key.
-- A foreign key on patient_id links this table to the patients table.
CREATE TABLE admissions (
    admission_id INT PRIMARY KEY,
    patient_id INT,
    admission_date DATE,
    discharge_date DATE,
    length_of_stay INT,
    discharge_disposition VARCHAR(50),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);

-- Create the diagnoses table
-- This table stores diagnoses associated with each admission.
-- diagnosis_id is the primary key.
-- A foreign key on admission_id links this table to the admissions table.
CREATE TABLE diagnoses (
    diagnosis_id INT PRIMARY KEY,
    admission_id INT,
    ICD9_code VARCHAR(20),
    description VARCHAR(255),
    FOREIGN KEY (admission_id) REFERENCES admissions(admission_id)
);

-- Create the medications table
-- This table lists the medications prescribed for each admission.
-- medication_id is the primary key.
-- A foreign key on admission_id links this table to the admissions table.
CREATE TABLE medications (
    medication_id INT PRIMARY KEY,
    admission_id INT,
    drug_name VARCHAR(100),
    dosage VARCHAR(50),
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (admission_id) REFERENCES admissions(admission_id)
);
