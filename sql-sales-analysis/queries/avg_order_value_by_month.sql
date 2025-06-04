SELECT
  EXTRACT(YEAR FROM sale_date) AS year,
  EXTRACT(MONTH FROM sale_date) AS month,
  ROUND(AVG(quantity * unit_price), 2) AS avg_order_value
FROM sales
GROUP BY year, month
ORDER BY year, month;
