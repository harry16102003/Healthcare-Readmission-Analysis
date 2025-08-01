Healthcare Patient Readmission Analysis
This is an end-to-end data science and business intelligence project focused on analyzing patient readmission data. The project leverages a full pipeline from data management to predictive modeling and interactive visualization.

Project Overview
The primary objective is to analyze a healthcare dataset to identify factors contributing to patient readmissions within a 30-day window. The project culminates in a machine learning model that predicts readmission risk and an interactive Streamlit application to demonstrate its capabilities.

Technologies Used
Database: SQL Server Management Studio (SSMS) for data storage and management.

Data Analysis & Modeling: Python (Jupyter Notebook) with libraries such as pandas, scikit-learn, and xgboost.

Business Intelligence: Power BI for creating an interactive data dashboard.

Web Application: Streamlit for building a user-friendly, real-time prediction app.

Version Control: Git & GitHub for project management and collaboration.

Project Structure
The project is organized into the following directories:

app/: Contains the Streamlit web application (app.py) and the trained model file.

dashboard/: Contains the Power BI report file (.pbix).

dataset/: Contains the raw CSV data files used for the analysis.

model/: Stores the final trained predictive model (readmission_model_xgboost.pkl).

notebook/: Holds the Jupyter Notebook used for data cleaning, EDA, and model training.

sql_query/: Contains the SQL scripts for database and table creation.

Getting Started
Follow these steps to set up the project and run the Streamlit application.

1. Database Setup
Use SSMS to create the database and tables from the SQL scripts located in the sql_query/ directory.

Import the CSV files from the dataset/ directory into your SQL tables.

2. Python Environment
Ensure you have Python installed.

Create a virtual environment and install the required packages:

pip install -r requirements.txt



3. Running the Web App
Navigate to the app/ directory.

Run the Streamlit application from your terminal:

streamlit run app.py



The application will open in your web browser, where you can interact with the predictive model.

Model Details
The predictive model is a hyperparameter-tuned XGBoostClassifier that was trained to predict the likelihood of patient readmission. Key features considered by the model include:

Patient demographics (age, gender, ethnicity)

Admission details (length of stay, admission type)

Discharge disposition (e.g., whether the patient was discharged to home, rehab, or a nursing facility)

The model's performance metrics (accuracy, precision, recall, and F1-score) are included in the Power BI dashboard and were a key part of the project's analysis.

About Me
Name: Harsh Bandal

GitHub: https://github.com/harry16102003

LinkedIn: https://www.linkedin.com/in/harsh-bandal-3240912b7/

Project Goal: To demonstrate an end-to-end data science workflow using popular industry tools and techniques.
