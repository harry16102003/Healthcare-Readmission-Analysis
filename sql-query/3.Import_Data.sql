-- Use the database you created for the project
USE Healthcare_Analysis;
GO

-- 1. Import patients.csv into the patients table
-- This command patients.csv is in C:\Users\ADMIN\Desktop\Healthcare Patient Readmission Analysis\Dataset\
BULK INSERT patients
FROM 'C:\Users\ADMIN\Desktop\Healthcare Patient Readmission Analysis\Dataset\patients.csv'
WITH (
    FIRSTROW = 2, -- Skips the header row
    FIELDTERMINATOR = ',', -- Specifies the column delimiter
    ROWTERMINATOR = '0x0a' -- Specifies the row terminator (new line character)
);
GO

-- 2. Import admissions.csv into the admissions table
-- This command admissions.csv is in C:\Users\ADMIN\Desktop\Healthcare Patient Readmission Analysis\Dataset\
BULK INSERT admissions
FROM 'C:\Users\ADMIN\Desktop\Healthcare Patient Readmission Analysis\Dataset\admissions.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a'
);
GO

-- 3. Import diagnoses.csv into the diagnoses table
-- This command diagnoses.csv is in C:\Users\ADMIN\Desktop\Healthcare Patient Readmission Analysis\Dataset\
BULK INSERT diagnoses
FROM 'C:\Users\ADMIN\Desktop\Healthcare Patient Readmission Analysis\Dataset\diagnoses.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a'
);
GO

-- 4. Import medications.csv into the medications table
-- This command medications.csv is in C:\Users\ADMIN\Desktop\Healthcare Patient Readmission Analysis\Dataset\
BULK INSERT medications
FROM 'C:\Users\ADMIN\Desktop\Healthcare Patient Readmission Analysis\Dataset\medications.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a'
);
GO

