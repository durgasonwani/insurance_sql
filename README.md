# Insurance SQL Data Analysis

## Project Overview
This project contains SQL queries used to analyze insurance data. The analysis focuses on policy details, premium amount, claim amount, customer information, insurance categories, and claim status.

The purpose of this project is to use SQL queries to extract meaningful insights from insurance data and support business decision-making.

## Tools Used
- SQL
- MySQL
- Microsoft Excel
- GitHub

## Dataset Includes
- Policy Number
- Customer Name
- Gender
- Age
- Policy Type
- Insurance Category
- Premium Amount
- Claim Amount
- Claim Status
- Policy Start Date
- Policy End Date
- Customer Location
- Policy Status

## Analysis Performed
- View all insurance records
- Analyze total premium amount
- Analyze total claim amount
- Count total insurance policies
- Find unique customers
- Analyze policy types
- Compare insurance categories
- Analyze claim status
- Identify active and closed policies
- Analyze customers by gender and age
- Find high premium policies
- Find high claim amount policies
- Analyze insurance data by location

## Example SQL Queries

```sql
-- View all records
SELECT * 
FROM insurance_data;

-- Total premium amount
SELECT SUM(premium_amount) AS total_premium_amount
FROM insurance_data;

-- Total claim amount
SELECT SUM(claim_amount) AS total_claim_amount
FROM insurance_data;

-- Total number of policies
SELECT COUNT(policy_number) AS total_policies
FROM insurance_data;

-- Policy count by policy type
SELECT policy_type, COUNT(policy_number) AS total_policies
FROM insurance_data
GROUP BY policy_type;

-- Premium amount by insurance category
SELECT insurance_category, SUM(premium_amount) AS total_premium
FROM insurance_data
GROUP BY insurance_category;

-- Claim status analysis
SELECT claim_status, COUNT(*) AS total_claims
FROM insurance_data
GROUP BY claim_status;

-- Customer count by gender
SELECT gender, COUNT(*) AS total_customers
FROM insurance_data
GROUP BY gender;
