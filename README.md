# Supply Chain Analytics: SKU Revenue & Reorder Points

## Overview

This project analyzes sales and inventory data to identify high-performing SKUs and calculate reorder points. The goal was to uncover actionable insights that help optimize inventory, reduce stockouts, and support data-driven decision-making.

---

## Business Problem

Efficient inventory management is critical for revenue and customer satisfaction. By identifying top-selling SKUs and calculating when to reorder, businesses can maintain optimal stock levels and avoid lost sales or excess inventory.

---

## Data

* **Source:** Simulated company sales and inventory data.
* **Key tables:** `Orders` (Units Sold, Unit Price, Supplier_ID), `Inventory` (SKU, Current Stock, Lead Time)
* **Processing:** Cleaned for missing or duplicate data; aggregated for revenue ranking and reorder point calculations.

---

## Approach

1. Explored sales trends and SKU performance.
2. Ranked suppliers and SKUs by total revenue using SQL.
3. Calculated SKU-specific reorder points with Python based on historical sales and lead time.
4. Created visualizations to communicate key insights clearly.

---

## Key Insights

* The top 10 SKUs drive over 60% of total revenue.
* Several high-revenue SKUs are at risk of stockouts under current reorder policies.
* Recommendations are summarized in the [Executive Findings](./reports/executive_findings.docx).

The dashboard folder contains both the DAX measures and SQL scripts used to generate the insights. Visual outputs are captured in the dashboard screenshot and tables created during the initial exploration.
---

## Project Organization

All key files are organized clearly for easy review:

```
project-name/
├── README.md
├── dashboard/                 
│   ├── dax_measures/          # DAX calculations used in the dashboard
│   └── sql_scripts/           # SQL queries used for data preparation and analysis
├── dashboard_screenshot.png   # screenshot of final dashboard
└── executive_summary.docx     # summary of findings and recommendations
```

*Scripts can be run sequentially: `data_cleaning.py` → `analysis.py` → `reorder_point_calc.py` (Python 3.x, dependencies in `requirements.txt`).*

---

## Next Steps

* Automate monitoring of top SKUs using calculated reorder points.
* Build an interactive dashboard in Tableau or Power BI for real-time inventory insights.
* Explore predictive demand modeling to improve reorder accuracy.
