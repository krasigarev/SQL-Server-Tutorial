SELECT 
    [product_name],
    [list_price],
    [category_id]
FROM production.products
ORDER BY [product_name] DESC;
GO

SELECT
    [product_name],
    [category_name],
    [list_price]
FROM production.products AS p  
INNER JOIN production.categories AS c ON c.category_id = p.category_id
ORDER BY [product_name] DESC;
GO

SELECT
    [product_name],
    [category_name],
    [brand_name],
    [list_price]
FROM production.products AS p  
INNER JOIN production.categories AS c ON c.category_id = p.category_id
INNER JOIN production.brands AS b ON b.brand_id = p.brand_id
ORDER BY [product_name] DESC;
GO
