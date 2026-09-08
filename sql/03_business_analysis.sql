USE zepto;
-- QUESTION 1
-- Which categories have the most products?
-- Business Objective: Identify categories with the largest product assortment.

SELECT
    Category,
    COUNT(*) AS product_count
FROM zepto_products
GROUP BY Category
ORDER BY product_count DESC;


USE zepto;

-- QUESTION 2
-- Which categories generate the highest potential sales value?
-- Business Objective: Estimate the potential sales value of currently available inventory.

SELECT
    Category,
    SUM(discounted_Selling_Price * available_Quantity) AS inventory_value
FROM zepto_products
GROUP BY Category
ORDER BY inventory_value DESC;

-- Business Insight:
-- Cooking Essentials and Munchies have the highest potential inventory sales value at approximately ₹3.37 crore each.
-- These categories represent the largest available inventory value and may deserve greater attention in inventory planning
-- and sales prioritization.


-- QUESTION 3
-- Which products have the highest discounts?
-- Business Objective:
-- Identify products with the highest discount percentages.

SELECT
    id,
    name,
    Category,
    mrp,
    discount_Percent,
    discounted_Selling_Price
FROM zepto_products
ORDER BY discount_Percent DESC
LIMIT 10;

-- Business Insight:
-- The highest discount observed is 51%, with three Dukes Waffy
-- wafer products receiving this discount.
-- Several other products in the top 10 are discounted by 50%,
-- indicating aggressive promotional pricing across selected products.

-- QUESTION 4
-- Which products have the highest available inventory?
-- Business Objective:
-- Identify products with the highest available quantity.

SELECT
    id,
    name,
    Category,
    available_Quantity,
    discounted_Selling_Price
FROM zepto_products
ORDER BY available_Quantity DESC
LIMIT 10;

-- Business Insight:
-- The highest available quantity is 6 units.
-- Multiple products are tied at this inventory level,
-- indicating that inventory is relatively low across the top-ranked products.

-- QUESTION 5
-- Which categories have the highest average discount percentage?
-- Business Objective:
-- Identify categories with the highest average promotional discount.

SELECT
    Category,
    ROUND(AVG(discount_Percent), 2) AS average_discount
FROM zepto_products
GROUP BY Category
ORDER BY average_discount DESC;

-- Business Insight:
-- Fruits & Vegetables have the highest average discount at 15.46%,
-- followed by Meats, Fish & Eggs at 11.03%.
-- Most other categories have average discounts around 7-8%.
-- The higher discounts in fresh and perishable categories may help
-- encourage faster sales and reduce the risk of unsold inventory.

-- QUESTION 6
-- Which categories have the highest number of out-of-stock products?
-- Business Objective:
-- Identify categories with the highest number of products
-- having zero available inventory.

SELECT
    Category,
    COUNT(*) AS out_of_stock_products
FROM zepto_products
WHERE available_Quantity = 0
GROUP BY Category
ORDER BY out_of_stock_products DESC;

-- Business Insight:
-- Cooking Essentials and Munchies have the highest number of
-- out-of-stock products, with 64 products each.
-- Packaged Food, Ice Cream & Desserts, and Chocolates & Candies
-- follow with 45 out-of-stock products each.
-- These categories may require greater attention to inventory
-- monitoring and replenishment planning.

-- QUESTION 7
-- Which products have the highest inventory value?
-- Business Objective:
-- Identify products with the highest potential inventory value.

SELECT
id,
name,
Category,
available_Quantity,
discounted_Selling_Price,
discounted_Selling_Price * available_Quantity AS inventory_value
FROM zepto_products
ORDER BY inventory_value DESC
LIMIT 10;

-- Business Insight:
-- Borges Extra Light Olive Oil Bottle has the highest inventory value
-- at ₹8,394 per product-category record.
-- Praakritik Natural Desi Gir Cow A2 Ghee and Saffola Gold also
-- have high inventory values.
-- These products represent relatively high-value inventory and may
-- require closer monitoring to avoid excessive capital being tied up
-- in stock.

-- QUESTION 8
-- Which categories have the highest total available inventory?
-- Business Objective:
-- Identify categories with the largest total number of units available.

SELECT
    Category,
    SUM(available_Quantity) AS total_available_inventory
FROM zepto_products
GROUP BY Category
ORDER BY total_available_inventory DESC;

-- Business Insight:
-- Cooking Essentials and Munchies have the highest total available
-- inventory, with 2,186 units each.
-- Packaged Food, Ice Cream & Desserts, and Chocolates & Candies
-- follow with 1,521 units each.
-- These categories hold the largest quantities of available stock
-- and may require closer inventory monitoring and replenishment planning.

-- QUESTION 9
-- Which categories have the highest average selling price?
-- Business Objective:
-- Identify categories with the highest average discounted selling price.

SELECT
    Category,
    ROUND(AVG(discounted_Selling_Price), 2) AS average_selling_price
FROM zepto_products
GROUP BY Category
ORDER BY average_selling_price DESC;

-- Business Insight:
-- Personal Care and Paan Corner have the highest average discounted
-- selling price at approximately ₹189.74.
-- Meats, Fish & Eggs and Health & Hygiene follow with average
-- selling prices of approximately ₹164.10 and ₹158.56 respectively.
-- This indicates that these categories generally contain higher-priced
-- products compared with categories having lower average selling prices.

-- QUESTION 10
-- Which categories have the highest total potential inventory value?
-- Business Objective:
-- Identify categories with the largest potential value of available inventory.

SELECT
    Category,
    SUM(discounted_Selling_Price * available_Quantity) AS total_inventory_value
FROM zepto_products
GROUP BY Category
ORDER BY total_inventory_value DESC;

-- Business Insight:
-- Cooking Essentials and Munchies have the highest total potential
-- inventory value at approximately ₹3,37,369 each.
-- Personal Care and Paan Corner follow with approximately ₹2,70,849
-- each.
-- These categories represent the largest amount of potential sales
-- value currently held in available inventory and may require closer
-- inventory and working-capital monitoring.

-- QUESTION 11
-- Which categories provide the highest total discount savings?
-- Business Objective:
-- Identify categories with the largest total discount amount.

SELECT
    Category,
    SUM(mrp - discounted_Selling_Price) AS total_discount_savings
FROM zepto_products
GROUP BY Category
ORDER BY total_discount_savings DESC;

-- Business Insight:
-- Cooking Essentials and Munchies have the highest total discount
-- savings at approximately ₹8,074 each.
-- Paan Corner and Personal Care follow with approximately ₹5,979
-- each in total discount savings.
-- This indicates that these categories contribute the largest
-- overall price reductions across the product assortment.

-- QUESTION 12
-- Which categories have the highest out-of-stock percentage?
-- Business Objective:
-- Compare stock availability across categories using out-of-stock rates.

SELECT
    Category,
    COUNT(*) AS total_products,
    SUM(CASE WHEN available_Quantity = 0 THEN 1 ELSE 0 END) AS out_of_stock_products,
    ROUND(
        SUM(CASE WHEN available_Quantity = 0 THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS out_of_stock_percentage
FROM zepto_products
GROUP BY Category
ORDER BY out_of_stock_percentage DESC;

-- Business Insight:
-- Biscuits has the highest out-of-stock rate at approximately 28.57%.
-- Beverages and Dairy, Bread & Batter follow at approximately 21.71%.
-- Meats, Fish & Eggs has an out-of-stock rate of approximately 19.05%.
-- These categories may require closer replenishment monitoring
-- because a relatively high proportion of their products are unavailable.

-- QUESTION 13
-- Which categories have the highest average inventory per product?
-- Business Objective:
-- Compare inventory depth across categories.

SELECT
    Category,
    ROUND(AVG(available_Quantity), 2) AS average_inventory_per_product
FROM zepto_products
GROUP BY Category
ORDER BY average_inventory_per_product DESC;

-- Business Insight:
-- Health & Hygiene has the highest average inventory at approximately
-- 4.38 units per product.
-- Home & Cleaning follows at approximately 4.32 units per product.
-- Cooking Essentials and Munchies maintain approximately 4.25 units
-- per product.
-- This indicates that these categories maintain relatively deeper
-- inventory levels on a per-product basis.

-- QUESTION 14
-- Which products have the highest absolute discount amount?
-- Business Objective:
-- Identify products with the largest monetary discount.

SELECT
    id,
    name,
    Category,
    mrp,
    discount_Percent,
    discounted_Selling_Price,
    mrp - discounted_Selling_Price AS discount_amount
FROM zepto_products
ORDER BY discount_amount DESC
LIMIT 10;

-- Business Insight:
-- Borges Extra Light Olive Oil Bottle has the highest absolute
-- discount amount at approximately ₹1,201.
-- Pampers Pants - Large follows with an absolute discount of
-- approximately ₹700.
-- These products provide customers with substantial monetary savings
-- even when their discount percentages are not necessarily the highest.
