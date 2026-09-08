# Zepto Product Inventory Analysis using SQL

##  Project Overview

This project analyzes a Zepto product inventory dataset using MySQL to uncover insights related to product assortment, pricing, discounts, inventory levels, stock availability, and potential inventory value.

The analysis focuses on converting raw product-level data into meaningful business insights that can support inventory planning, pricing decisions, and category-level analysis.

---

##  Business Objective

The main objective of this project is to analyze Zepto's product inventory data and answer key business questions related to:

- Product assortment
- Product pricing
- Discount strategies
- Inventory availability
- Out-of-stock products
- Potential inventory value
- Category-level performance

---

##  Dataset

The dataset contains **3,732 products across 14 categories**.

### Key columns used:

| Column | Description |
|---|---|
| `id` | Unique product identifier |
| `Category` | Product category |
| `name` | Product name |
| `mrp` | Maximum Retail Price |
| `discount_Percent` | Discount percentage |
| `available_Quantity` | Units currently available |
| `discounted_Selling_Price` | Selling price after discount |
| `weight_In_Gms` | Product weight in grams |
| `outOfStock` | Stock availability indicator |
| `quantity` | Product quantity |

---

##  Tools & Technologies

- **MySQL**
- **MySQL Workbench**
- **SQL**
- **GitHub**
- **CSV Dataset**

---

##  SQL Skills Demonstrated

This project demonstrates practical use of:

- `SELECT`
- `WHERE`
- `GROUP BY`
- `ORDER BY`
- `COUNT()`
- `SUM()`
- `AVG()`
- `ROUND()`
- `CASE`
- Aggregate functions
- Calculated columns
- Conditional aggregation
- Category-level analysis
- Product-level analysis
- Inventory analysis
- Pricing analysis
- Discount analysis

---

##  Business Questions Analyzed

### Product & Category Analysis

1. Which categories have the most products?
2. Which categories generate the highest potential sales value?
3. Which products have the highest discounts?
4. Which products have the highest available inventory?
5. Which categories have the highest average discount?
6. Which categories have the highest number of out-of-stock products?

### Inventory Analysis

7. Which products have the highest inventory value?
8. Which categories have the highest total available inventory?
9. Which categories have the highest average selling price?
10. Which categories have the highest total potential inventory value?

### Advanced Business Analysis

11. Which categories provide the highest total discount savings?
12. Which categories have the highest out-of-stock percentage?
13. Which categories have the highest average inventory per product?
14. Which products have the highest absolute discount amount?
15. Which products have the highest discounted selling price?

---

##  Key Business Insights

### Product Assortment

- **Cooking Essentials** and **Munchies** have the largest product assortment, with **514 products each**.
- **Meats, Fish & Eggs** has the smallest product assortment with **63 products**.

### Discounts

- **Fruits & Vegetables** have the highest average discount at approximately **15.46%**.
- The highest individual discount observed is **51%**, applied to multiple products.
- **Cooking Essentials** and **Munchies** have the highest total discount savings in the analysis.

### Inventory

- **Cooking Essentials** and **Munchies** have the highest total available inventory at **2,186 units each**.
- The highest available quantity for an individual product in the dataset is **6 units**.
- **Health & Hygiene** has the highest average inventory per product at approximately **4.38 units**.

### Stock Availability

- **Biscuits** has the highest out-of-stock percentage at approximately **28.57%**.
- **Beverages** and **Dairy, Bread & Batter** follow at approximately **21.71%**.

### Inventory Value

- **Cooking Essentials** and **Munchies** have the highest total potential inventory value at approximately **₹3.37 lakh each**.
- High-value products such as olive oil, ghee, and cooking oil products contribute significantly to inventory value.

### Pricing

- **Personal Care** and **Paan Corner** have the highest average discounted selling price at approximately **₹189.74**.
- The **Borges Extra Light Olive Oil Bottle** has one of the highest discounted selling prices at approximately **₹1,399**.

---

##  Project Structure

```text
Zepto-Product-Inventory-Analysis-using-SQL/
│
├── sql/
│   ├── 01_data_exploration.sql
│   ├── 02_data_cleaning.sql
│   └── 03_business_analysis.sql
│
├── zepto_v1.csv
├── analysis.sql
└── README.md
