-- Project: Customer Data Analysis (W3Schools Dataset)
-- Goal: Data Cleaning and Standardization
-- Created by: Revina Adhi Safitri

-- 1. Check missing values
SELECT *
FROM customers
WHERE City IS NULL OR City = ''
   OR Country IS NULL OR Country = '';

-- 2. Standardize text format (Country to uppercase)
UPDATE customers
SET Country = UPPER(Country);

-- 3. Trim whitespace
UPDATE customers
SET Country = TRIM(Country),
    City = TRIM(City);

-- 4. Handle missing values (fill with default)
UPDATE customers
SET City = 'UNKNOWN'
WHERE City IS NULL OR City = '';

-- 5. Final verification
SELECT *
FROM customers
WHERE City IS NULL OR City = ''
   OR Country IS NULL OR Country = '';