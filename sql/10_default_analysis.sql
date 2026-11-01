-- Phase 3: Default Analysis

WITH risk_data AS (
    SELECT
        loan_id,
        loan_amount,
        outstanding_balance,
        default_flag,
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
    SUM(CASE
        WHEN default_flag = 1 THEN 1
        ELSE 0
    END) AS default_loans,
    ROUND(
        100.0 * SUM(CASE
            WHEN default_flag = 1 THEN 1
            ELSE 0
        END) / NULLIF(COUNT(loan_id), 0),
        2
    ) AS default_rate_pct
FROM risk_data
WHERE risk_level <> 'Invalid Data'
GROUP BY risk_level
ORDER BY
    CASE risk_level
        WHEN 'High Risk' THEN 1
        WHEN 'Medium Risk' THEN 2
        WHEN 'Low Risk' THEN 3
    END;
