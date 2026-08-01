-- create new table

SELECT
    b.brand_name AS brand, 
    c.category_name AS category, 
    p.model_year,
    ROUND(SUM(quantity * i.list_price * (1 - discount)), 0) AS sales  
INTO sales.sales_summary
FROM sales.order_items i
INNER JOIN production.products p ON p.product_id = i.product_id
INNER JOIN production.brands b ON b.brand_id = p.brand_id
INNER JOIN production.categories c ON c.category_id = p.category_id
GROUP BY b.brand_name, c.category_name, p.model_year
ORDER BY b.brand_name, c.category_name, p.model_year;
GO

SELECT * FROM sales.sales_summary
ORDER BY brand, category, model_year;
GO


SELECT
    brand,
    category,
    SUM (sales) sales
FROM sales.sales_summary
GROUP BY brand, category
ORDER BY brand, category;
GO

SELECT
    brand,
    SUM(sales) sales
FROM sales.sales_summary
GROUP BY brand
ORDER BY brand;
GO

SELECT
    category,
    SUM(sales) sales
FROM sales.sales_summary
GROUP BY category
ORDER BY category;
GO

SELECT
    SUM(sales)
FROM sales.sales_summary;

-- union all

SELECT
    brand,
    category,
    SUM(sales) sales
FROM sales.sales_summary
GROUP BY brand, category
UNION ALL
SELECT
    brand,
    NULL,
    SUM(sales) sales
FROM sales.sales_summary
GROUP BY brand
UNION ALL
SELECT
    NULL,
    category,
    SUM(sales) sales
FROM sales.sales_summary
GROUP BY category
UNION ALL
SELECT
    NULL,
    NULL,
    SUM(sales) sales
FROM sales.sales_summary
ORDER BY brand, category;

-- SQL Server GROUPING SETS

SELECT
    brand,
    category,
    SUM(sales) sales
FROM sales.sales_summary
GROUP BY
        GROUPING SETS (
            (brand, category),
            (brand),
            (category),
            ()
        )
ORDER BY brand, category;
GO

SELECT
    GROUPING(brand) grouping_brand,
    GROUPING(category) grouping_category,
    brand,
    category,
    SUM(sales) sales
FROM sales.sales_summary
GROUP BY
        GROUPING SETS (
            (brand, category),
            (brand),
            (category),
            ()
        )
ORDER BY brand, category;
