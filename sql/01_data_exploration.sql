USE zepto;

-- ==========================================
-- ZEPTO SQL BUSINESS ANALYSIS
-- DATA EXPLORATION
-- ==========================================

-- 1. Total number of products
SELECT COUNT(*) AS total_products
FROM zepto_products;


-- 2. View sample records
SELECT *
FROM zepto_products
LIMIT 10;


-- 3. View table structure
DESCRIBE zepto_products;


-- 4. Check categories
SELECT DISTINCT Category
FROM zepto_products;


-- 5. Count products by category
SELECT
    Category,
    COUNT(*) AS product_count
FROM zepto_products
GROUP BY Category
ORDER BY product_count DESC;
