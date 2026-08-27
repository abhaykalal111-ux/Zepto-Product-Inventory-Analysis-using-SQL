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


USE zepto;

QUESTION 2
Which categories generate the highest potential sales value?
Business Objective: Estimate the potential sales value of currently available inventory.

SELECT
    Category,
    SUM(discounted_Selling_Price * available_Quantity) AS inventory_value
FROM zepto_products
GROUP BY Category
ORDER BY inventory_value DESC;
