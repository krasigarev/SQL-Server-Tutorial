SELECT
    [product_id],
    [product_name],
    [category_id],
    [model_year],
    [list_price]
FROM production.products
WHERE [category_id] = 1
ORDER BY [list_price] DESC;
GO

-- AND

SELECT 
    [product_id],
    [product_name],
    [category_id],
    [model_year],
    [list_price]
FROM production.products
WHERE [category_id] = 1 AND [model_year] = 2018
ORDER BY [list_price] DESC;
GO

SELECT 
    [product_id],
    [product_name],
    [category_id],
    [model_year],
    [list_price]
FROM production.products
WHERE [list_price] > 300 AND [model_year] = 2018
ORDER BY [list_price] DESC;
GO

-- OR

SELECT 
    [product_id],
    [product_name],
    [category_id],
    [model_year],
    [list_price]
FROM production.products
WHERE [list_price] > 3000 OR [model_year] = 2018
ORDER BY [list_price] DESC;
GO

-- BETWEEN

SELECT
    [product_id],
    [product_name],
    [category_id],
    [model_year],
    [list_price]
FROM production.products
WHERE [list_price] BETWEEN 1899.99 AND 1999.99
ORDER BY [list_price] DESC;
GO

-- IN

SELECT 
    [product_id],
    [product_name],
    [category_id],
    [model_year],
    [list_price]
FROM production.products
WHERE [list_price] IN (299.99, 369.99, 489.99)
ORDER BY [list_price] DESC;
GO

-- LIKE

SELECT 
    [product_id],
    [product_name],
    [category_id],
    [model_year],
    [list_price]
FROM production.products
WHERE [product_name] LIKE '%Cruiser%'
ORDER BY [list_price] DESC;
GO