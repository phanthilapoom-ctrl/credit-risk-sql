
# Credit Risk Data Quality & Portfolio Analysis

## Overview
This project uses SQL and PostgreSQL to examine loan data, identify data quality issues, and summarize loan portfolio information.

The project is designed to demonstrate practical SQL skills relevant to entry-level Data Analyst and Credit Risk Analyst roles.

## Tools
- PostgreSQL
- SQL
- Docker

## Dataset
The current dataset contains six synthetic loan records created for SQL practice. It includes loan amounts, outstanding balances, days past due, and default indicators.

This is synthetic practice data and does not represent real customers or bank records.

## Project Objectives
- Identify missing values in loan records.
- Detect negative outstanding balances.
- Summarize the number of loan records.
- Practice SQL queries for data quality checks.

## SQL Skills Demonstrated
- Data Retrieval & Filtering: SELECT, WHERE, ORDER BY
- Aggregate Functions: COUNT, SUM
- Data Aggregation: GROUP BY, HAVING
- Conditional Logic: CASE WHEN for risk classification
- Data Joining: LEFT JOIN to combine customer and loan data
- Data Quality Checks: Identifying missing values (NULL), negative values, and invalid records
- Credit Risk Analysis: Loan portfolio summaries, risk segmentation, and default analysisors

## Project Structure
```text
credit-risk-sql/
├── sql/
│   └── 01_data_quality_checks.sql
├── data/
├── results/
│   └── 01_data_quality_checks.txt
└── README.md
```

## Current Findings
- One loan record has a missing outstanding balance.
- One loan record has a negative outstanding balance.
- The dataset contains six loan records.

## Limitations
The dataset is small and synthetic. The findings are for SQL practice only and should not be interpreted as real credit risk conclusions.

## Future Improvements
- Add more loan records.
- Investigate data quality issues.
- Analyze overdue loans and default rates.
- Add SQL joins and common table expressions (CTEs).
- Build a portfolio dashboard.
