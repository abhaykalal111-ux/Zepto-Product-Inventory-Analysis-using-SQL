USE zepto;

-- ==========================================
-- DATA CLEANING
-- ==========================================

-- Check for NULL values
SELECT *
FROM zepto_products
WHERE Category IS NULL
   OR name IS NULL
   OR mrp IS NULL
   OR discount_Percent IS NULL
   OR discounted_Selling_Price IS NULL;


-- Check for zero/invalid prices
SELECT
    id,
    name,
    mrp,
    discount_Percent,
    discounted_Selling_Price
FROM zepto_products
WHERE mrp = 0
   OR discounted_Selling_Price = 0;


-- Check whether discounted price follows
-- MRP - discount calculation
SELECT
    id,
    name,
    mrp,
    discount_Percent,
    discounted_Selling_Price
FROM zepto_products
WHERE ABS(
    discounted_Selling_Price -
    (mrp * (1 - discount_Percent / 100))
) > 1;
