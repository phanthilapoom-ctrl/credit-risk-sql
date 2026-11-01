-- Phase 3: Risk Segmentation

SELECT
    loan_id,
    customer_id,
    loan_amount,
    outstanding_balance,
    days_past_due,
    default_flag,
    CASE
        WHEN days_past_due < 0 THEN 'Invalid Data'
        WHEN default_flag = 1 THEN 'High Risk'
        WHEN default_flag = 0 AND days_past_due >= 30 THEN 'Medium Risk'
        ELSE 'Low Risk'
    END AS risk_level
FROM loans
ORDER BY
    CASE
        WHEN days_past_due < 0 THEN 1
        WHEN default_flag = 1 THEN 2
        WHEN default_flag = 0 AND days_past_due >= 30 THEN 3
        ELSE 4
    END,
    loan_id;
