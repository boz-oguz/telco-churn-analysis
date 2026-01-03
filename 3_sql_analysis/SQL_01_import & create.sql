-- Telco Churn SQL Analysis

-- We have completed our EDA on Python, now its time to continue with the analysis.

-- First let's create the table with more user friendly field names

CREATE TABLE customer_raw (
	customerid TEXT,
	gender TEXT,
	seniorcitizen INTEGER,
	partner TEXT,
	dependents TEXT,
	tenure INTEGER,
	phoneservice TEXT,
	multiplelines TEXT,
	internetservice TEXT,
	onlinesecurity TEXT,
	onlinebackup TEXT,
	deviceprotection TEXT,
	techsupport TEXT,
	streamingtv TEXT,
	streamingmovies TEXT,
	contract TEXT,
	paperlessbilling TEXT,
	paymentmethod TEXT,
	monthlycharges NUMERIC,
	totalcharges NUMERIC,
	churn TEXT
	);

-- Imported data
-- Validating...

SELECT COUNT(*)
FROM customer_raw cr -- all imported, 7043 rows

SELECT *
FROM customer_raw cr 
LIMIT 5 -- Rows showing, importing successful.

-- Validate Data Types

SELECT
    column_name,
    data_type
FROM information_schema.columns
WHERE table_name = 'customer_raw'
ORDER BY ordinal_position;

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


