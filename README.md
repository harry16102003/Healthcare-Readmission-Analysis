# 🏥 Healthcare Patient Readmission Analysis

An end-to-end **Data Science and Business Intelligence** project focused on analyzing patient readmission data.  
This project implements a full pipeline—from data ingestion and analysis to predictive modeling and interactive visualization—to deliver actionable insights into healthcare operations.

---

## 🚀 Key Features

- **Interactive Dashboard**: A comprehensive 4-page Power BI dashboard for exploring patient demographics, clinical factors, and model performance.  
- **Live Prediction App**: A user-friendly web application built with Streamlit that uses a trained XGBoost model to predict patient readmission risk in real-time.  
- **Data-Driven Analysis**: Based on a detailed analysis of a real-world healthcare dataset in a Jupyter Notebook.  
- **End-to-End Workflow**: Demonstrates the full data science lifecycle from ingestion to deployment.

---

## 🔗 Live Demos & Screenshots

- 🔗 **Live Streamlit App**: [Click to open](https://healthcare-readmission-analysis-rmuajo4ghd9n8weauxki7q.streamlit.app/)  
- 🖼️ **Web App UI Preview**:  
  ![Web App](screenshots/1.png)

- 🖼️ **Dashboard - Overview**  
  ![Overview](screenshots/2.jpg)

- 🖼️ **Dashboard - Readmission Drivers**  
  ![Drivers](screenshots/3.jpg)

- 🖼️ **Dashboard - Demographics**  
  ![Demographics](screenshots/4.jpg)

- 🖼️ **Dashboard - Model Insights**  
  ![Model](screenshots/5.jpg)

---

## 🛠️ Tech Stack

| Area             | Tools & Libraries                                                   |
|------------------|---------------------------------------------------------------------|
| **Database**      | SQL Server Management Studio (SSMS)                                 |
| **Data Analysis** | Python (Pandas, NumPy, Seaborn, Matplotlib)                         |
| **Modeling**      | Scikit-learn, XGBoost, Hyperparameter Tuning                        |
| **Visualization** | Power BI                                                            |
| **Web App**       | Streamlit                                                           |
| **Version Control**| Git & GitHub                                                       |

---

## 📂 Project Structure

```
Healthcare-Readmission-Analysis/
├── app/               # Streamlit web app & model file
│   └── app.py
│   └── readmission_model_xgboost.pkl
├── dashboard/         # Power BI report file
│   └── readmission_dashboard.pbix
├── dataset/           # Raw and processed CSV datasets
├── model/             # Final trained model
│   └── readmission_model_xgboost.pkl
├── notebook/          # Jupyter Notebook (EDA, modeling)
│   └── analysis_and_modeling.ipynb
├── sql_query/         # SQL scripts for DB setup
│   └── create_tables.sql
├── requirements.txt   # Python dependencies
└── README.md
```

---

## ⚙️ Setup and Installation

### 🔧 Clone the Repository

```bash
git clone https://github.com/your-username/Healthcare-Readmission-Analysis.git
cd Healthcare-Readmission-Analysis
```

### 🧪 Create a Virtual Environment

```bash
python -m venv venv
source venv/bin/activate  # On Windows, use `venv\Scripts\activate`
```

### 📦 Install the Requirements

**requirements.txt**:

```
streamlit
joblib
numpy
pandas
scikit-learn
xgboost
```

**Install using pip**:

```bash
pip install -r requirements.txt
```

### ▶️ Run the Streamlit App

```bash
cd app
streamlit run app.py
```

---

## 🔬 Methodology

1. **Data Ingestion & Cleaning**: Loaded and preprocessed CSV data in Jupyter Notebook.
2. **Feature Engineering**: Created new variables like `is_readmitted`, `age_diagnoses_interaction`.
3. **Model Training**: Used XGBoost Classifier with hyperparameter tuning.
4. **Deployment**: Model saved with `joblib` and integrated in Streamlit app.

---

## 👨‍💻 About Me

Hi! I'm **Harsh Bandal**, a passionate data science student with a strong interest in machine learning, data visualization, and building end-to-end data products.

📌 _“Turning data into decisions, and models into impact.”_

- **GitHub**: [harry16102003](https://github.com/harry16102003)  
- **LinkedIn**: [Harsh Bandal](https://www.linkedin.com/in/harsh-bandal-3240912b7/)  
- **Email**: harshbandal.scoe.comp@gmail.com  

---

## ⭐ Project Goal

To demonstrate a complete **end-to-end data science workflow** using industry-standard tools and technologies, while addressing a real-world problem in the healthcare domain.

---

## 📜 License

This project is licensed under the **MIT License** - see the LICENSE file for details.
