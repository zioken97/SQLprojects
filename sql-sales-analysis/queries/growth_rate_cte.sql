WITH monthly_sales AS (
  SELECT
    DATE_TRUNC(sale_date, MONTH) AS month,
    SUM(quantity * unit_price) AS total_sales
  FROM sales
  GROUP BY month
),
sales_growth AS (
  SELECT
    month,
    total_sales,
    LAG(total_sales) OVER (ORDER BY month) AS previous_month_sales
  FROM monthly_sales
)
SELECT
  month,
  total_sales,
  previous_month_sales,
  ROUND(
    100.0 * (total_sales - previous_month_sales) / NULLIF(previous_month_sales, 0),
    2
  ) AS growth_percentage
FROM sales_growth;
