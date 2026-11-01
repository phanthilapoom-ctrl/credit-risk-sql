-- Phase 3: Portfolio Risk Analysis

WITH risk_data AS (
    SELECT
        loan_id,
        loan_amount,
        outstanding_balance,
        CASE
            WHEN days_past_due < 0 THEN 'Invalid Data'
            WHEN default_flag = 1 THEN 'High Risk'
            WHEN default_flag = 0 AND days_past_due >= 30 THEN 'Medium Risk'
            ELSE 'Low Risk'
        END AS risk_level
    FROM loans
)

SELECT
    risk_level,
    COUNT(loan_id) AS total_loans,
    SUM(loan_amount) AS total_loan_amount,
    SUM(outstanding_balance) AS total_outstanding_balance
FROM risk_data
GROUP BY risk_level
ORDER BY
    CASE risk_level
        WHEN 'High Risk' THEN 1
        WHEN 'Medium Risk' THEN 2
        WHEN 'Low Risk' THEN 3
        WHEN 'Invalid Data' THEN 4
    END;
