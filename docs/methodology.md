# Financial KPI Analysis — Methodology

## Business objective
Create a clear view of financial performance and identify where revenue is generated, where costs accumulate, and which business segments, regions, and product groups contribute to profit.

## Analytical workflow
1. Source review: preserve the original Excel workbook and Power BI report as project source artifacts.
2. Data validation: inspect field types, date coverage, missing values, duplicate records, and numeric outliers before analysis.
3. Metric construction: calculate net revenue, cost of goods sold, profit, profit margin, and discount impact using consistent definitions.
4. Trend analysis: aggregate financial measures by month and compare changes across periods.
5. Contribution analysis: compare segments, regions, and product groups by revenue and profit.
6. Communication: present headline KPIs, trends, ranked contributions, and a concise analyst readout.

## KPI definitions
- Gross sales: sales value before discounts.
- Discounts: value reduced from gross sales.
- Net revenue: gross sales minus discounts.
- COGS: direct cost of goods sold.
- Profit: net revenue minus COGS.
- Profit margin: profit divided by net revenue.
- Discount rate: discounts divided by gross sales.

## Interpretation guardrails
- Compare margin alongside revenue; high sales do not automatically mean high profitability.
- Separate volume growth from pricing and discount effects where the source data permits.
- Compare like-for-like periods when assessing growth.
- Treat outliers and missing periods as data-quality questions before interpreting them as business events.
- The interactive HTML dashboard is a demonstrator using generated illustrative data. Its figures are not the actual source workbook results.

## Limitations and next steps
Connect the original workbook export to the dashboard data layer, validate KPI calculations against the Power BI model, add year-over-year comparisons, and document the reporting currency and fiscal calendar from the source file.
