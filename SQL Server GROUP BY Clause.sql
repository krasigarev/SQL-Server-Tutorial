SELECT
    customer_id,
    YEAR(order_date) order_year
FROM sales.orders
WHERE customer_id in (1, 2)
ORDER BY customer_id;
GO

SELECT
    customer_id,
    YEAR(order_date) AS order_date
FROM sales.orders
WHERE customer_id IN (1,2)
GROUP BY customer_id, YEAR(order_date)
ORDER BY customer_id;
GO

SELECT
    DISTINCT customer_id,
    YEAR(order_date) ORDER_DATE
FROM sales.orders
WHERE customer_id IN (1,2)
ORDER BY customer_id;
GO

SELECT
    customer_id,
    YEAR(order_date) ORDER_DATE,
    COUNT(order_id) ORDER_PLACED
FROM sales.orders
WHERE customer_id IN (1,2)
GROUP BY customer_id, YEAR(order_date)
ORDER BY 1;
GO

SELECT
    customer_id,
    YEAR(order_date) ORDER_DATE,
    order_status
FROM sales.orders
WHERE customer_id IN (1,2)
GROUP BY customer_id, YEAR(order_date), order_status
ORDER BY customer_id;
GO


SELECT
    city,
    COUNT(customer_id) CUSTOMER_COUNT
FROM sales.customers
GROUP BY city
ORDER BY city;
GO

SELECT
    city,
    [state],
    COUNT(customer_id) CUSTOMER_COUNT
FROM sales.customers
GROUP BY city, [state]
ORDER BY 1, 2;
GO

SELECT
    brand_name,
    MIN(p.list_price) min_price,
    MAX(p.list_price) max_price
FROM production.products p
INNER JOIN production.brands b ON b.brand_id = p.brand_id
WHERE model_year = 2018
GROUP BY brand_name
ORDER BY brand_name;
GO

SELECT
    brand_name,
    AVG(p.list_price) avg_price
FROM production.products p
INNER JOIN production.brands b ON b.brand_id = p.brand_id
WHERE model_year = 2018
GROUP BY brand_name
ORDER BY brand_name;
GO

SELECT
    order_id,
    SUM(quantity * list_price * (1 - discount)) net_value
FROM sales.order_items
GROUP BY order_id;
