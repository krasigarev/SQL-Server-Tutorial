SELECT
    product_name,
    order_id
FROM sales.order_items o  
RIGHT JOIN production.products p ON p.product_id = o.product_id
ORDER BY order_id;
GO

SELECT
    product_name,
    order_id
FROM sales.order_items o  
RIGHT JOIN production.products p ON p.product_id = o.product_id
WHERE order_id IS NULL
ORDER BY product_name;
GO
