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