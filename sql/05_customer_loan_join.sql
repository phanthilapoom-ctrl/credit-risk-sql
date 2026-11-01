-- Phase 2: Customer and Loan Analysis using INNER JOIN

SELECT
    l.loan_id,
    c.customer_name,
    c.province,
    c.customer_segment,
    l.loan_amount,
    l.outstanding_balance,
    l.days_past_due,
    l.default_flag
FROM loans AS l
INNER JOIN customers AS c
    ON l.customer_id = c.customer_id
ORDER BY l.loan_id;
