SELECT
    product_id
FROM production.products
EXCEPT
SELECT
    product_id
FROM sales.order_items;
GO

SELECT
    product_id
FROM production.products
EXCEPT
SELECT
    product_id
FROM sales.order_items
ORDER BY product_id;
GO
