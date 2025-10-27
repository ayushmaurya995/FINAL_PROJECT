# 🚀 FINANCIAL_KPI_ANALYSIS_STARTUP

A complete framework to measure, track, and visualize the **core financial health metrics** of an early-stage startup.  
This toolkit integrates **Excel, Python (Pandas), and Tableau** to provide clear insights into **revenue growth, burn rate, CAC, LTV, run rate, and customer retention cohorts**.

---

## 🎯 Objectives
- Collect and clean financial + customer acquisition data  
- Compute monthly **KPI metrics** (Revenue, Burn, CAC, LTV, ARR)  
- Perform **Cohort Retention Analysis** (customer groups by signup month)  
- Visualize results in an **interactive Tableau dashboard**  
- Export **LTV:CAC report in PDF** for stakeholders  

---

## 📂 Project Structure

Startup_Financial_KPI_Project/
│

├── Startup_KPI_Template.xlsx # Excel template with prebuilt sheets

├── kpi_analysis_starter.py # Python script to process KPIs

├── README.md # Documentation (this file)

└── outputs/ # Generated files (after running script)

├── monthly_kpis.csv

├── cohort_retention.csv

└── LTV_CAC_Report.pdf

## 🛠️ Tools & Requirements

Python Pandas

Excel (or Google Sheets)

Tableau Desktop / Tableau Public

# 📊 KPIs Calculated

> Revenue = Σ (net invoice amount)

> Gross Margin % = (Revenue – COGS) ÷ Revenue

> Burn Rate = Operating Expenses – Gross Margin

> CAC = Marketing Spend ÷ New Customers

> ARPU = Revenue ÷ Active Customers

> Churn Rate = Lost Customers ÷ Customers at Start of Month

> LTV (Gross) = (ARPU × Gross Margin %) ÷ Churn Rate

> LTV:CAC = LTV ÷ CAC

> ARR (Run Rate) = avg(last 3 months’ Revenue) × 12

> Retention % = Active Cohort Customers ÷ Original Cohort Size

# 📈 Workflow
# Prepare Data

* Fill in Excel template sheets:

* Raw_Transactions → invoices (date, customer, product, revenue, cogs)

* Customers → signup + churn dates

* Marketing → spend + new customers by month

* Expenses → R&D, admin, operating costs

# Build Dashboard (Tableau)

< Connect Tableau to monthly_kpis.csv + cohort_retention.csv

< Use calculated fields for CAC, LTV, ARPU, Churn, Retention

< Dashboard layout includes:

< KPI summary cards

    Revenue vs OpEx trendlines

    CAC vs New Customers

    Cohort Retention Heatmap

# 📊 Example Output (Sample)

Monthly KPI Snapshot (Feb 2024)

| Month      | Revenue  | Burn Rate | CAC   | LTV     | LTV\:CAC | ARR       |
| ---------- | -------- | --------- | ----- | ------- | -------- | --------- |
| 2024-02-01 | \$18,000 | -\$4,200  | \$150 | \$1,200 | 8.0      | \$216,000 |

# Cohort Retention (example, % of original users active)
    
| Cohort → | M0   | M1  | M2  | M3  | M4  |
| -------- | ---- | --- | --- | --- | --- |
| Jan 2024 | 100% | 80% | 65% | 55% | 40% |
| Feb 2024 | 100% | 78% | 60% | 48% | —   |

# 📌 Deliverables

📊 Excel model (financial template)

🐍 Python script (KPI engine)

📉 Tableau dashboard (interactive visualization)

📑 PDF report (LTV:CAC + KPI trends)

# ✅ Best Practices

| Keep monthly units consistent across CAC, LTV, ARPU, and Churn

| Use rolling averages for CAC and Revenue to reduce noise

| Ensure divide-by-zero protection (e.g., if no new customers in a month)

| Update calendar sheet to extend time horizon automatically

# 🚀 Next Steps

^ Replace sample data in Excel with your startup’s financials

^ Run Python script to refresh KPIs

^ Connect Tableau for interactive insights

^ Export LTV:CAC PDF report and share with investors/stakeholders
