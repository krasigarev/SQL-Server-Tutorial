SELECT
    [first_name],
    [last_name]
FROM sales.customers
ORDER BY [first_name];
GO

SELECT 
    [first_name] + ' ' + [last_name]
FROM sales.customers
ORDER BY [first_name];
GO


SELECT 
    [first_name] + ' ' + [last_name] AS full_name
FROM sales.customers
ORDER BY [first_name];
GO

SELECT 
    [first_name] + ' ' + [last_name] AS 'full_name'
FROM sales.customers
ORDER BY [first_name];
GO

SELECT
    category_name 'Product Category'
FROM production.categories;
GO


SELECT
    category_name 'Product Category'
FROM production.categories
ORDER BY category_name;  
GO

SELECT
    category_name 'Product Category'
FROM production.categories
ORDER BY 'Product Category';
GO

-- TABLE ALIAS

SELECT
    sales.customers.customer_id,
    [first_name],
    [last_name],
    [order_id]
FROM sales.customers
INNER JOIN sales.orders ON sales.customers.customer_id = sales.orders.customer_id;
GO


SELECT
    c.customer_id,
    [first_name],
    [last_name],
    [order_id]
FROM sales.customers AS c
INNER JOIN sales.orders as o ON c.customer_id = o.customer_id;
GO

