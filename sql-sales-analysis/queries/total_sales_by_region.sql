SELECT
  region,
  ROUND(SUM(quantity * unit_price), 2) AS total_sales
FROM sales
GROUP BY region
ORDER BY total_sales DESC;
