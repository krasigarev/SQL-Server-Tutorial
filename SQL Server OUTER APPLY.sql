SELECT
    p.product_id,
    r.quantity,
    r.discount
FROM production.products p  
OUTER APPLY (
    SELECT  TOP 1
        i.*
    FROM sales.order_items i  
    INNER JOIN sales.orders o ON o.order_id = i.order_id
    WHERE product_id = p.product_id
    ORDER BY order_date DESC
) r  
WHERE p.brand_id = 1
ORDER BY r.quantity;


CREATE FUNCTION GetLatestQuantityDiscount (@product_id INT) 
RETURNS TABLE 
AS RETURN (
    SELECT TOP 1 
        i.*
    FROM sales.order_items i
    INNER JOIN sales.orders o ON o.order_id = i.order_id
    WHERE product_id = @product_id
    ORDER BY order_date DESC
);

SELECT
  p.product_name,
  r.quantity,
  r.discount
FROM production.products p 
OUTER APPLY GetLatestQuantityDiscount(p.product_id) r
WHERE p.brand_id = 1
ORDER BY r.quantity;
