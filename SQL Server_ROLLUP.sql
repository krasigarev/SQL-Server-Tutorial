SELECT * FROM sales.sales_summary;
GO

SELECT
    brand,
    category,
    SUM(sales) sales
FROM sales.sales_summary
GROUP BY 
        ROLLUP (brand, category);
GO

SELECT
    category,
    brand,
    SUM(sales) sales
FROM sales.sales_summary
GROUP BY 
        ROLLUP (category, brand);
GO

SELECT
    brand,
    category,
    SUM(sales) sales
FROM sales.sales_summary
GROUP BY brand,
         ROLLUP (category);
GO
