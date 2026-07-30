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