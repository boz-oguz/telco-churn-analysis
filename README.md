# Telco Churn Analysis

![Python](https://img.shields.io/badge/Python-3670A0?style=for-the-badge&logo=python&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-FF5733?style=for-the-badge&logo=postgresql&logoColor=white)
![Tableau](https://img.shields.io/badge/Tableau-E97627?style=for-the-badge&logo=tableau&logoColor=white)

## Project Overview
This project analyzes customer churn for a telecommunications company, focusing on **patterns, high-risk revenue segments, and top churn drivers**. It combines **Python EDA**, **SQL analytics**, and **interactive Tableau dashboards** for end-to-end insights.

**Key Objectives:**
- Explore churn trends across customer segments
- Identify high-risk revenue segments
- Determine top drivers of churn
- Provide actionable insights for customer retention

---

## Dataset
- Source: Telco customer data (synthetic/realistic)  
- Key columns:
  - `customerid`, `gender`, `seniorcitizen`, `partner`, `dependents`
  - `tenure`, `contract`, `paymentmethod`, `monthlycharges`, `totalcharges`
  - `churn_flag`, `revenue_at_risk`, `high_risk_customers`, etc.
- Tables:
  - `customer_raw`: raw imported & cleaned dataset
  - `customer_analytics`: derived metrics and calculated fields for dashboards

---

## Methodology

### 1. Python EDA
- Libraries: `pandas`, `numpy`, `matplotlib`, `seaborn`
- Steps:
  - Univariate and bivariate analysis
  - Data cleaning and type corrections
  - Feature engineering (tenure groups, revenue at risk, flags)

### 2. SQL Analytics
- Created `customer_analytics` table
- Calculated:
  - Churn rate per segment
  - Revenue at risk per customer group
  - Aggregated KPIs for dashboards
- Advanced queries:
  - Grouping by tenure, contract, revenue bucket
  - Window functions for ranking and diagnostics

### 3. Tableau Dashboards
| Dashboard | Focus | Sheets | Key Metrics |
|-----------|-------|-------|-------------|
| **Dashboard 1 — Churn Overview** | Descriptive churn patterns | Churn by Tenure, Contract, Gender, Seniority, Partner, Dependents | Counts, % churn |
| **Dashboard 2 — Customer Churn Insights** | Financial impact & diagnostics | Revenue at Risk by Tenure, Revenue at Risk by Contract, Monthly Charges vs Churn, High-Risk Customers by Revenue Bucket, Top Churn Drivers | Revenue at Risk, Churn Rate, High-Risk Customers |

**Dashboard 2 Title:**  
`Customer Churn Insights — Financial & Diagnostic Analysis`  

**Dashboard 2 Subtitle:**  
`Identifying high-risk customers and top churn drivers to maximize retention and minimize revenue loss`

---

## Key Insights
- High-paying customers represent the **largest financial risk** if they churn  
- Churn rates are highest among **short-tenure, month-to-month contract customers**  
- Partnered or dependent customers generally churn less  
- Insights provide actionable guidance for **targeted retention and revenue protection**

---

## Deliverables
- Python notebooks: **EDA & Data Cleaning**
- SQL scripts: **Analytics & KPI calculations**
- Tableau dashboards: **Interactive and portfolio-ready**
- Portfolio screenshots: **consistent 1600×1200 resolution**
- README.md summarizing approach, methodology, and insights

---

## Skills Demonstrated
- **Python:** data wrangling, EDA, visualization  
- **SQL:** aggregation, window functions, KPI computation  
- **Tableau:** dashboard design, calculated fields, interactivity  
- **Data storytelling:** linking metrics to business impact  

---

## Screenshots (Portfolio)
1. **Dashboard 1 — Churn Overview**
   - Shows churn distribution by tenure, contract, gender, and demographics  
2. **Dashboard 2 — Customer Churn Insights**
   - Visualizes revenue at risk, monthly charges distribution, high-risk customers, and top churn drivers  
