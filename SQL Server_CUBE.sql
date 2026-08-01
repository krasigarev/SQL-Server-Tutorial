SELECT
    brand,
    SUM(sales)
FROM sales.sales_summary
GROUP BY brand;
GO

SELECT
    brand,
    category,
    SUM(sales) sales
FROM sales.sales_summary
GROUP BY CUBE (brand, category);
GO

SELECT
    brand,
    category,
    SUM(sales) sales
FROM sales.sales_summary
GROUP BY brand, CUBE (category);
GO