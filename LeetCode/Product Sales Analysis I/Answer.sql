SELECT p.product_name, s.year, s.price
FROM SALES s
LEFT JOIN Product p
ON p.product_id = s.product_id
