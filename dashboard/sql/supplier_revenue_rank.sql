-- Supplier Revenue Ranking Query --

SELECT
    supplier_id,
    SUM(units_sold * unit_price) AS total_revenue,
    RANK() OVER (
        ORDER BY SUM(units_sold * unit_price) DESC
    ) AS revenue_rank
FROM orders
GROUP BY supplier_id
ORDER BY revenue_rank;
