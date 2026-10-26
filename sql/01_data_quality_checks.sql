
-- A: ตรวจสอบจำนวนแถวที่ outstanding_balance เป็น NULL
SELECT COUNT(*)
FROM loans
WHERE outstanding_balance IS NULL;

-- B: ตรวจสอบยอดคงเหลือติดลบ
SELECT loan_id, outstanding_balance
FROM loans
WHERE outstanding_balance < 0;

-- C: ตรวจสอบจำนวนสินเชื่อทั้งหมด
SELECT COUNT(*)
FROM loans;
