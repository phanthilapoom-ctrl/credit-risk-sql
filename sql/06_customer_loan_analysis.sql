-- Phase 2: Customer-level Loan Analysis

SELECT
    c.customer_id,
    c.customer_name,
    c.customer_segment,
    COUNT(l.loan_id) AS total_loans,
    SUM(l.loan_amount) AS total_loan_amount,
    SUM(l.outstanding_balance) AS total_outstanding_balance,
    SUM(CASE
        WHEN l.default_flag = 1 THEN 1
        ELSE 0
    END) AS default_loans
FROM customers AS c
LEFT JOIN loans AS l
    ON c.customer_id = l.customer_id
GROUP BY
    c.customer_id,
    c.customer_name,
    c.customer_segment
ORDER BY total_outstanding_balance DESC;
