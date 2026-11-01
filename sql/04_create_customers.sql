-- Phase 2: Create Customers Table

CREATE TABLE IF NOT EXISTS customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(100),
    province VARCHAR(100),
    customer_segment VARCHAR(50)
);

INSERT INTO customers
    (customer_id, customer_name, province, customer_segment)
VALUES
    ('C001', 'Alice', 'Bangkok', 'Retail'),
    ('C002', 'Bob', 'Chiang Mai', 'Retail'),
    ('C003', 'Charlie', 'Pathum Thani', 'Premium'),
    ('C004', 'David', 'Chonburi', 'Premium')
ON CONFLICT (customer_id) DO NOTHING;
