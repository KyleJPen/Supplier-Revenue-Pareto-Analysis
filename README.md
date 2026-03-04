# Supplier-Revenue-Pareto-Analysis
An end to end capstone project 

- Project Overview

This project analyzes supplier revenue concentration and operational inventory risk using SQL and Power BI.

It combines:

Revenue validation & reconciliation

Pareto analysis (80/20 rule)

Supplier performance segmentation

Herfindahl-Hirschman Index (HHI) concentration analysis

Inventory reorder threshold monitoring

The objective was to build an end-to-end analytics workflow — from raw database validation to executive-level dashboard insights.

- Business Objectives

This project answers three key business questions:

1️ - Revenue Concentration

Which suppliers generate the majority of revenue?

How dependent is the business on top suppliers?

2️ - Performance Segmentation

Which suppliers are High, Mid, and Low performers?

How many suppliers drive 80% of revenue?

3️ - Operational Risk

Which SKUs are below reorder thresholds?

Where is there potential stockout risk?

- Dataset Summary

8,000 order records

15 suppliers

Inventory table with SKU-level stock data

PostgreSQL database environment

Total Revenue (validated via SQL): $29,970,608.95

- SQL Components
  
- Revenue Validation

Confirms row count, revenue accuracy, supplier count, and null integrity.

Demonstrates:

Data auditing

Cross-tool validation (SQL ↔ Power BI)

Defensive SQL design

- Supplier Pareto & Ranking Analysis

Uses:

CTEs

Window functions

RANK()

Running totals

Percent-of-total calculations

Calculates:

Revenue rank

Revenue % contribution

Cumulative revenue %

Supplier performance tier

Demonstrates:

Advanced SQL

Revenue distribution modeling

Concentration analysis logic

- Inventory Reorder Alert

Identifies SKUs below reorder threshold.

Demonstrates:

Operational analytics

Threshold-based business rules

Supply chain awareness

- Power BI Dashboard Features

Interactive Pareto chart (Revenue + Cumulative %)

Dynamic KPI cards

Supplier ranking table

HHI concentration metric

Cross-filtered visuals

Clean data model with validated measures

- Key Insights

Top suppliers drive majority of revenue (Pareto effect observed)

80% of revenue comes from a concentrated subset of suppliers

HHI indicates measurable supplier concentration risk

Inventory monitoring identifies potential stockout exposure

- Tools & Skills Demonstrated

SQL

CTEs

Window functions

Aggregation

Ranking

Running totals

Null handling

Business rule logic

Power BI

DAX measures

Context management

Pareto modeling

Data modeling

KPI visualization

Cross-filter interaction

Analytics Concepts

Pareto principle (80/20)

Revenue concentration

HHI (market concentration index)

Operational risk monitoring

Data validation methodology
