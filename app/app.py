# ================================================================
# Patient Readmission Prediction Web App using Streamlit
# ================================================================

# Install dependencies:
# pip install streamlit pandas joblib scikit-learn xgboost

import streamlit as st
import pandas as pd
import joblib
import os

# Load the trained XGBoost model
try:
    model_path = os.path.join(os.path.dirname(__file__), 'readmission_model_xgboost.pkl')
    best_model = joblib.load(model_path)
except FileNotFoundError:
    st.error("Error: The model file 'readmission_model_xgboost.pkl' was not found. Please ensure it's in the correct directory.")
    st.stop()

# Features the model expects
expected_features = [
    'length_of_stay', 'number_of_diagnoses', 'gender_Male',
    'ethnicity_Black', 'ethnicity_Hispanic', 'ethnicity_Other', 'ethnicity_White',
    'admission_type_Emergency', 'admission_type_Newborn', 'admission_type_Urgent',
    'discharge_disposition_Home', 'discharge_disposition_Nursing Facility', 'discharge_disposition_Rehab'
]

# Page Navigation
st.sidebar.title("Navigation")
page = st.sidebar.radio("Go to", ["Home", "About"])

# ===================== Home Page =====================
if page == "Home":
    st.title("Patient Readmission Prediction App")
    st.write("Enter patient details to predict the probability of a 30-day readmission.")

    with st.form("prediction_form"):
        st.header("Patient Information")

        length_of_stay = st.slider("Length of Stay (days)", 1, 30, 5)
        num_diagnoses = st.slider("Number of Diagnoses", 1, 10, 2)
        gender = st.selectbox("Gender", ["Female", "Male"])
        ethnicity = st.selectbox("Ethnicity", ["Asian", "Black", "Hispanic", "Other", "White"])
        admission_type = st.selectbox("Admission Type", ["Elective", "Emergency", "Newborn", "Urgent"])
        discharge_disposition = st.selectbox("Discharge Disposition", ["Expired", "Home", "Nursing Facility", "Rehab"])

        submit_button = st.form_submit_button(label="Predict Readmission")

    if submit_button:
        # Initialize all features to 0
        input_data = {feature: 0 for feature in expected_features}

        # Set numerical features
        input_data['length_of_stay'] = length_of_stay
        input_data['number_of_diagnoses'] = num_diagnoses

        # One-hot encoding
        if gender == "Male":
            input_data['gender_Male'] = 1

        if ethnicity == "Black":
            input_data['ethnicity_Black'] = 1
        elif ethnicity == "Hispanic":
            input_data['ethnicity_Hispanic'] = 1
        elif ethnicity == "Other":
            input_data['ethnicity_Other'] = 1
        elif ethnicity == "White":
            input_data['ethnicity_White'] = 1

        if admission_type == "Emergency":
            input_data['admission_type_Emergency'] = 1
        elif admission_type == "Newborn":
            input_data['admission_type_Newborn'] = 1
        elif admission_type == "Urgent":
            input_data['admission_type_Urgent'] = 1

        if discharge_disposition == "Home":
            input_data['discharge_disposition_Home'] = 1
        elif discharge_disposition == "Nursing Facility":
            input_data['discharge_disposition_Nursing Facility'] = 1
        elif discharge_disposition == "Rehab":
            input_data['discharge_disposition_Rehab'] = 1

        # Create DataFrame and ensure column order
        input_df = pd.DataFrame([input_data])[expected_features]

        # Prediction
        prediction = best_model.predict(input_df)
        prediction_proba = best_model.predict_proba(input_df)[0][1]

        # Display Result
        st.subheader("Prediction Result")
        if prediction[0] == 1:
            st.warning("⚠️ Based on the input, the patient is likely to be readmitted.")
        else:
            st.success("✅ Based on the input, the patient is not likely to be readmitted.")

        st.write(f"**Probability of readmission:** {prediction_proba:.2f}")

# ===================== About Page =====================
elif page == "About":
    st.title("About This Project")
    st.markdown("""
    This project is an end-to-end healthcare data science solution focused on predicting patient readmissions.

    ### Project Overview
    The goal is to predict 30-day hospital readmissions using patient features with an XGBoost model.

    ### Project Pipeline
    1. **Data Management:** SQL Server (SSMS) for patient data
    2. **Data Analysis & Modeling:** Python, pandas, feature engineering, and model tuning
    3. **Model Used:** XGBoost Classifier
    4. **Visualization:** Power BI for insights
    5. **Web Deployment:** Streamlit app for predictions

    ### Model Inputs
    - Length of Stay
    - Number of Diagnoses
    - Gender, Ethnicity
    - Admission Type, Discharge Disposition
    """)

