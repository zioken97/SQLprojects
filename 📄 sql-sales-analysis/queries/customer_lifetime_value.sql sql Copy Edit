SELECT
  c.customer_id,
  c.customer_name,
  ROUND(SUM(s.quantity * s.unit_price), 2) AS lifetime_value
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY lifetime_value DESC;
