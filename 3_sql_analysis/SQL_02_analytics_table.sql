-- Telco Churn SQL Analysis

-- We have completed our EDA on Python, now its time to continue with the analysis.

-- Create our analytics table for smoother and faster queries and analysis

DROP TABLE IF EXISTS customer_analytics;

CREATE TABLE customer_analytics AS
SELECT 
	customerid,
	gender,
	seniorcitizen,
	partner,
	dependents,
	tenure,
	contract,
	paymentmethod,
	monthlycharges,
	totalcharges,
	churn,
	
	/* Additional business flags */
	CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END AS churn_flag,
	CASE WHEN partner = 'Yes' THEN 1 ELSE 0 END AS partner_flag,
	CASE WHEN dependents = 'Yes' THEN 1 ELSE 0 END AS dependents_flag,
	
	/* Tenure bucketing */
	CASE
		WHEN tenure < 12 THEN '0-12'
		WHEN tenure BETWEEN 12 AND 24 THEN '12-24'
		WHEN tenure BETWEEN 25 AND 48 THEN '25-48'
		ELSE '48+'
	END AS tenure_group
FROM customer_raw;

-- Sanity check

SELECT COUNT(*)
FROM customer_analytics; -- All created with 7043 rows

SELECT *
FROM customer_analytics
LIMIT 5; -- Correct fields has created