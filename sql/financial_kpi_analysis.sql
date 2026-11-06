-- Financial KPI Analysis: reusable SQL patterns
-- Assumed normalized table: financial_transactions
-- Columns: order_date, segment, region, product, gross_sales, discount, cogs

-- 1. Monthly financial KPI summary
SELECT DATE_TRUNC('month', order_date)::date AS month,
       SUM(gross_sales) AS gross_sales,
       SUM(discount) AS discounts,
       SUM(gross_sales - discount) AS net_revenue,
       SUM(cogs) AS cogs,
       SUM(gross_sales - discount - cogs) AS profit,
       ROUND(100.0 * SUM(gross_sales - discount - cogs)
         / NULLIF(SUM(gross_sales - discount), 0), 2) AS profit_margin_pct
FROM financial_transactions GROUP BY 1 ORDER BY 1;

-- 2. Segment profitability ranking
SELECT segment, SUM(gross_sales - discount) AS net_revenue,
       SUM(gross_sales - discount - cogs) AS profit,
       ROUND(100.0 * SUM(gross_sales - discount - cogs)
         / NULLIF(SUM(gross_sales - discount), 0), 2) AS profit_margin_pct
FROM financial_transactions GROUP BY segment ORDER BY profit DESC;

-- 3. Regional contribution and share of total revenue
WITH regional AS (
  SELECT region, SUM(gross_sales - discount) AS net_revenue,
         SUM(gross_sales - discount - cogs) AS profit
  FROM financial_transactions GROUP BY region
)
SELECT region, net_revenue, profit,
       ROUND(100.0 * net_revenue / NULLIF(SUM(net_revenue) OVER (), 0), 2)
         AS revenue_share_pct
FROM regional ORDER BY net_revenue DESC;

-- 4. Product discount and margin diagnostics
SELECT product, SUM(gross_sales) AS gross_sales, SUM(discount) AS discounts,
       ROUND(100.0 * SUM(discount) / NULLIF(SUM(gross_sales), 0), 2) AS discount_rate_pct,
       SUM(gross_sales - discount - cogs) AS profit,
       ROUND(100.0 * SUM(gross_sales - discount - cogs)
         / NULLIF(SUM(gross_sales - discount), 0), 2) AS profit_margin_pct
FROM financial_transactions GROUP BY product ORDER BY profit DESC;

-- 5. Year-over-year net revenue growth
WITH yearly AS (
  SELECT EXTRACT(YEAR FROM order_date)::int AS year,
         SUM(gross_sales - discount) AS net_revenue
  FROM financial_transactions GROUP BY 1
)
SELECT year, net_revenue, LAG(net_revenue) OVER (ORDER BY year) AS prior_year_revenue,
       ROUND(100.0 * (net_revenue - LAG(net_revenue) OVER (ORDER BY year))
         / NULLIF(LAG(net_revenue) OVER (ORDER BY year), 0), 2) AS revenue_growth_pct
FROM yearly ORDER BY year;
