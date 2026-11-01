-- Phase 2: Loan Portfolio Summary

-- A: สรุปข้อมูลสินเชื่อแยกตามสถานะ Default
SELECT
    default_flag,
    COUNT(*) AS total_loans,
    SUM(loan_amount) AS total_loan_amount,
    SUM(outstanding_balance) AS total_outstanding_balance,
    AVG(days_past_due) AS avg_days_past_due
FROM loans
GROUP BY default_flag
ORDER BY default_flag;


-- B: ค้นหากลุ่มที่มีจำนวนวันค้างชำระเฉลี่ยตั้งแต่ 30 วันขึ้นไป
SELECT
    default_flag,
    COUNT(*) AS total_loans,
    AVG(days_past_due) AS avg_days_past_due
FROM loans
GROUP BY default_flag
HAVING AVG(days_past_due) >= 30
ORDER BY avg_days_past_due DESC;
