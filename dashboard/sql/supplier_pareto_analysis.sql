WITH supplier_summary AS (
    SELECT
        o.supplier_id,
        COUNT(*) AS order_count,
        SUM(COALESCE(o.units_sold, 0)) AS total_units,
        SUM(COALESCE(o.units_sold, 0) * COALESCE(o.unit_price, 0)) AS total_revenue
    FROM orders o
    GROUP BY o.supplier_id
),

supplier_ranked AS (
    SELECT
        supplier_id,
        order_count,
        total_units,
        total_revenue,

        RANK() OVER (ORDER BY total_revenue DESC) AS revenue_rank,

        ROUND(
            (total_revenue * 100.0 
            / SUM(total_revenue) OVER ())::numeric,
            2
        ) AS revenue_percent,

        ROUND(
            (
                SUM(total_revenue) OVER (
                    ORDER BY total_revenue DESC
                    ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
                )
                / SUM(total_revenue) OVER ()
                * 100
            )::numeric,
            2
        ) AS cumulative_revenue_percent

    FROM supplier_summary
)

SELECT
    supplier_id,
    order_count,
    total_units,
    total_revenue,
    revenue_rank,
    revenue_percent,
    cumulative_revenue_percent,
    CASE
        WHEN revenue_rank <= 3 THEN 'High Performer'
        WHEN revenue_rank <= 8 THEN 'Mid Tier'
        ELSE 'Low Performer'
    END AS supplier_tier
FROM supplier_ranked
ORDER BY revenue_rank;
