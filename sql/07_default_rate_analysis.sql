-- Phase 2: Default Rate Analysis

SELECT
    c.customer_name,
    COUNT(l.loan_id) AS total_loans,
    SUM(CASE
        WHEN l.default_flag = 1 THEN 1
        ELSE 0
    END) AS default_loans,
    ROUND(
        SUM(CASE
            WHEN l.default_flag = 1 THEN 1
            ELSE 0
        END) * 100.0 / NULLIF(COUNT(l.loan_id), 0),
        2
    ) AS default_rate
FROM customers AS c
LEFT JOIN loans AS l
    ON c.customer_id = l.customer_id
GROUP BY
    c.customer_id,
    c.customer_name
ORDER BY default_rate DESC;
