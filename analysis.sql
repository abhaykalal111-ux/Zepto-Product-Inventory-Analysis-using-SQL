-- =========================================================
-- ZEPTO PRODUCT & INVENTORY ANALYSIS
-- =========================================================

-- Dataset columns:
-- Category
-- name
-- mrp
-- discountPercent
-- availableQuantity
-- discountedSellingPrice
-- weightInGms
-- outOfStock


-- =========================================================
-- 1. BASIC DATA EXPLORATION
-- =========================================================

-- 1. Count total products

SELECT COUNT(*) AS total_products
FROM zepto;


-- 2. View all products

SELECT *
FROM zepto
LIMIT 10;


-- 3. Find the number of product categories

SELECT COUNT(DISTINCT Category) AS total_categories
FROM zepto;


-- 4. Find the number of unique products

SELECT COUNT(DISTINCT name) AS unique_products
FROM zepto;


-- =========================================================
-- 2. PRICE ANALYSIS
-- =========================================================

-- 5. Find the average MRP

SELECT
    AVG(mrp) AS average_mrp
FROM zepto;


-- 6. Find the average discounted selling price

SELECT
    AVG(discountedSellingPrice) AS average_selling_price
FROM zepto;


-- 7. Find the highest-priced product

SELECT
    name,
    Category,
    mrp
FROM zepto
ORDER BY mrp DESC
LIMIT 10;


-- 8. Find the lowest-priced products

SELECT
    name,
    Category,
    mrp
FROM zepto
WHERE mrp > 0
ORDER BY mrp ASC
LIMIT 10;


-- =========================================================
-- 3. DISCOUNT ANALYSIS
-- =========================================================

-- 9. Find products with discounts greater than 20%

SELECT
    name,
    Category,
    mrp,
    discountPercent,
    discountedSellingPrice
FROM zepto
WHERE discountPercent > 20
ORDER BY discountPercent DESC;


-- 10. Find the top 10 products by discount percentage

SELECT
    name,
    Category,
    discountPercent
FROM zepto
ORDER BY discountPercent DESC
LIMIT 10;


-- 11. Calculate the average discount by category

SELECT
    Category,
    AVG(discountPercent) AS average_discount
FROM zepto
GROUP BY Category
ORDER BY average_discount DESC;


-- =========================================================
-- 4. INVENTORY ANALYSIS
-- =========================================================

-- 12. Find products that are out of stock

SELECT
    name,
    Category,
    outOfStock
FROM zepto
WHERE outOfStock = TRUE;


-- 13. Count out-of-stock products

SELECT
    COUNT(*) AS out_of_stock_products
FROM zepto
WHERE outOfStock = TRUE;


-- 14. Find categories with the highest number of
-- available products

SELECT
    Category,
    COUNT(*) AS product_count
FROM zepto
WHERE outOfStock = FALSE
GROUP BY Category
ORDER BY product_count DESC;


-- 15. Find products with low inventory

SELECT
    name,
    Category,
    availableQuantity
FROM zepto
WHERE availableQuantity <= 2
ORDER BY availableQuantity ASC;


-- =========================================================
-- 5. PRODUCT VALUE ANALYSIS
-- =========================================================

-- 16. Calculate the discount amount

SELECT
    name,
    Category,
    mrp,
    discountedSellingPrice,
    (mrp - discountedSellingPrice) AS discount_amount
FROM zepto
ORDER BY discount_amount DESC
LIMIT 10;


-- 17. Find products offering more than ₹500 discount

SELECT
    name,
    Category,
    mrp,
    discountedSellingPrice,
    (mrp - discountedSellingPrice) AS discount_amount
FROM zepto
WHERE (mrp - discountedSellingPrice) > 500
ORDER BY discount_amount DESC;


-- =========================================================
-- 6. CATEGORY ANALYSIS
-- =========================================================

-- 18. Count products in each category

SELECT
    Category,
    COUNT(*) AS total_products
FROM zepto
GROUP BY Category
ORDER BY total_products DESC;


-- 19. Average MRP by category

SELECT
    Category,
    AVG(mrp) AS average_mrp
FROM zepto
GROUP BY Category
ORDER BY average_mrp DESC;


-- 20. Average selling price by category

SELECT
    Category,
    AVG(discountedSellingPrice) AS average_selling_price
FROM zepto
GROUP BY Category
ORDER BY average_selling_price DESC;
