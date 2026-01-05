-- Telco Churn Analysis

-- SQL - KPI Queries > Customer Churn

-- Overall churn rate

SELECT
	COUNT(*) AS total_customers,
	SUM(churn_flag) AS churned_customers,
	ROUND(AVG(churn_flag)::NUMERIC, 3) * 100 AS churn_rate
FROM customer_analytics ca;

-- Churn by contract type

SELECT
	contract,
	COUNT(*) AS customers,
	SUM(churn_flag) AS churned_customers,
	ROUND(AVG(churn_flag)::NUMERIC, 3) * 100 AS churn_rate
FROM customer_analytics ca
GROUP BY contract
ORDER BY contract;

-- Churn by tenure

SELECT
	tenure_group,
	COUNT(*) AS customers,
	ROUND(AVG(churn_flag)::NUMERIC, 3) * 100 AS churn_rate
FROM customer_analytics ca
GROUP BY tenure_group
ORDER BY tenure_group;

-- Revenue at risk due to churned customers

SELECT
	SUM(monthlycharges) AS monthly_revenue_at_risk,
	ROUND(AVG(monthlycharges)::NUMERIC, 2) AS avg_monthly_charge_churned
FROM customer_analytics ca
WHERE churn_flag = 1;

-- Churn by payment method

SELECT
	paymentmethod,
	COUNT(*) AS customers,
	ROUND(AVG(churn_flag)::NUMERIC, 3) * 100 AS churn_rate
FROM customer_analytics ca
GROUP BY paymentmethod
ORDER BY churn_rate DESC;

-- High-risk segmentation

SELECT
	contract,
	tenure_group,
	COUNT(*) AS customers,
	ROUND(AVG(churn_flag)::NUMERIC, 3) * 100 AS churn_rate
FROM customer_analytics ca
GROUP BY contract, ca.tenure_group
HAVING COUNT(*) >= 100
ORDER BY churn_rate DESC;