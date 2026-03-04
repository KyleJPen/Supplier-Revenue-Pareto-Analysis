-- Revenue Validation Script --
SELECT SUM(units_sold * unit_price) AS total_revenue
FROM orders;
