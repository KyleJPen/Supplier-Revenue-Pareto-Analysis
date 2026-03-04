-- Validation Script --
SELECT
    COUNT(*) AS total_rows,
    SUM(COALESCE(units_sold, 0) * COALESCE(unit_price, 0)) AS total_revenue,
    COUNT(DISTINCT supplier_id) AS supplier_count,
    SUM(CASE 
            WHEN units_sold IS NULL 
              OR unit_price IS NULL 
            THEN 1 
            ELSE 0 
        END) AS null_rows
FROM orders;
