-- Phase 2: Risk Classification using CASE WHEN

SELECT
    loan_id,
    outstanding_balance,
    days_past_due,
    CASE
        WHEN days_past_due IS NULL THEN 'Missing Data'
        WHEN days_past_due < 0 THEN 'Invalid Data'
        WHEN days_past_due = 0 THEN 'Current'
        WHEN days_past_due BETWEEN 1 AND 30 THEN 'Low Risk'
        WHEN days_past_due BETWEEN 31 AND 60 THEN 'Medium Risk'
        WHEN days_past_due > 60 THEN 'High Risk'
    END AS risk_level
FROM loans
ORDER BY days_past_due;
