# Coffee Shop Sales — Power BI Report

## Overview
This Power BI report (`Coffee_Shop_Sales.pbix`) analyzes transaction-level sales data for a coffee shop business. It tracks revenue, order volume, and quantity sold across time, product categories, and store locations.

## Data Model
The model contains two main tables:

**Transactions** (fact table)
- `transaction_date`, `Hour`, `TT HOUR`
- `product_category`, `product_type`
- `store_location`
- `Total sales`, `Total orders`, `Total qyt sold` (measures)
- `MoM Growth & Diff Sales` (measure)

**Data Table** (date dimension)
- `Date` (with a Year → Quarter → Month → Day hierarchy)
- `Day Name`, `Day Number`, `Week Number`
- `Month year`
- `WeekDay / Weekend`

## Report Pages

### Page 1 — Main Dashboard (1920×1080)
The primary landing page, containing:
- KPI cards for total sales, total orders, and quantity sold, each paired with a month-over-month trend line chart
- **Sales Trend Over the Period** — column chart of sales over time
- **Total Sales by Store Location** — clustered bar chart
- **Sales by Product Category** — clustered bar chart (repeated/cross-filtered views)
- **Sales by Weekday/Weekend** — donut chart
- A pivot table for detailed breakdowns
- A slicer for filtering (e.g., by month/category)
- Title banner: "COFFEE SHOP SALES"

### Page 2 & "Duplicate of Page 2" — Tooltip Pages (340×260)
Small tooltip-style pages showing KPI cards and a donut chart — used as hover tooltips (e.g., "Report Sales" by month) rather than standalone report pages.

## Notes
- Report metadata indicates it was last authored/created via **Power BI Service (Cloud)**, report format version 5, PBIX format 1.28.
- No RLS/security bindings are defined.

## How to Use
Open the `.pbix` file in Power BI Desktop to explore, filter, or edit the report. Use the slicer on Page 1 to drill into specific time periods, and hover over visuals to trigger the tooltip pages.
