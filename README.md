# Telco Customer Churn Analysis

## Business Problem

Customer churn is a critical challenge in the telecommunications industry, directly impacting revenue stability and customer lifetime value. This project focuses on analyzing customer-level data to identify churn drivers, high-risk customer segments, and revenue-at-risk areas in order to support data-driven retention strategies.

The objective is not only to understand *who* is churning, but also *why* they are churning and *which actions* the business could prioritize.

---

## Dataset Overview

* **Source**: IBM Telco Customer Churn Dataset (public)
* **Records**: ~7,000 customers
* **Granularity**: One row per customer
* **Key Entities**:

  * Customer demographics
  * Contract and subscription details
  * Billing and payment information
  * Churn indicator
* **Time Dimension**: Customer tenure (in months)
* **Data Type**: Structured, tabular

---

## Tools & Stack

* **Python**: Pandas, NumPy, Matplotlib, Seaborn
* **Database**: PostgreSQL
* **SQL**: Analytical queries for KPI reporting
* **BI Tool**: Tableau
* **Version Control**: Git & GitHub

---

## Analytical Approach

1. **Exploratory Data Analysis (Python)**

   * Data quality assessment
   * Univariate and bivariate analysis
   * Identification of churn drivers

2. **Data Preparation**

   * Feature cleaning and standardization
   * Business KPI definition
   * Creation of analysis-ready dataset

3. **SQL Analysis (PostgreSQL)**

   * Loading raw and processed data into relational tables
   * Writing KPI-driven analytical queries
   * Preparing data for BI consumption

4. **Baseline Modeling (Optional)**

   * Logistic Regression for churn probability estimation
   * Model used as analytical support, not core focus

5. **BI Dashboard (Tableau)**

   * Interactive churn overview
   * Segment-level drill-downs
   * Management-focused KPI visualization

---

## Key Metrics

* Overall Churn Rate
* Churn Rate by Contract Type
* Average Customer Tenure
* Monthly Charges Distribution
* Estimated Revenue at Risk

---

## Business Impact | Geschäftlicher Mehrwert

**EN**

* Identifies customer segments with high churn risk
* Enables targeted retention strategies instead of generic discounts
* Supports proactive monitoring of revenue at risk
* Improves decision-making for customer lifecycle management

**DE (Keywords)**

* Kundenabwanderung
* Risikosegmente
* Kundenbindung
* Umsatzsicherung
* Entscheidungsunterstützung
* KPI-Überwachung

---

## Deliverables

* Python EDA notebooks
* SQL scripts and analytical queries
* Interactive Tableau dashboard
* Business-oriented insights and recommendations

---

## Status

> In Progress

---

## Notes

This project is designed to reflect a real-world analytics workflow, emphasizing business understanding, structured analysis, and clear communication over complex modeling techniques.
