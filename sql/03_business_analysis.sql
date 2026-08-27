USE zepto;
QUESTION 1
Which categories have the most products?
Business Objective:
Identify categories with the largest product assortment.

SELECT
    Category,
    COUNT(*) AS product_count
FROM zepto_products
GROUP BY Category
ORDER BY product_count DESC;
