-- AND Operator

SELECT
*
FROM production.products
WHERE [category_id] = 1 AND [list_price] > 400
ORDER BY [list_price] DESC;
GO

SELECT
*
FROM production.products
WHERE [category_id] = 1 AND [list_price] > 400 AND [brand_id] = 1
ORDER BY [list_price] DESC;
GO

SELECT
*
FROM production.products
WHERE [brand_id] = 1 OR [brand_id] = 2 AND [list_price] > 1000
ORDER BY [brand_id] DESC;
GO

SELECT
*
FROM production.products
WHERE ([brand_id] = 1 OR [brand_id] = 2) AND [list_price] > 1000
ORDER BY [brand_id];
GO

-- OR Operator

SELECT
    [product_name],
    [list_price]
FROM production.products
WHERE [list_price] < 200 OR [list_price] > 6000
ORDER BY [list_price];
GO

SELECT
    [product_name],
    [brand_id]
FROM production.products
WHERE [brand_id] = 1 OR [brand_id] = 2 OR [brand_id] = 4
ORDER BY [brand_id] DESC;
GO

SELECT
    [product_name],
    [brand_id]
FROM production.products
WHERE [brand_id] IN (1,2,3)
ORDER BY [brand_id] DESC;
GO

SELECT
    [product_name],
    [brand_id],
    [list_price]
FROM production.products
WHERE  [brand_id] = 1 OR [brand_id] = 2 AND [list_price] > 500
ORDER BY [brand_id] DESC, [list_price];
GO

SELECT
    [product_name],
    [brand_id],
    [list_price]
FROM production.products
WHERE ([brand_id] = 1 OR [brand_id] = 2) AND [list_price] > 500
ORDER BY [brand_id];
GO

-- IN Operator

SELECT
    [product_name],
    [list_price]
FROM production.products
WHERE [list_price] IN (89.99, 109.99, 159.99)
ORDER BY [list_price];
GO

SELECT
    [product_name],
    [list_price]
FROM production.products
WHERE [list_price] = 89.99 OR [list_price] = 109.99 OR [list_price] = 159.99
ORDER BY [list_price];
GO

SELECT
    [product_name],
    [list_price]
FROM production.products
WHERE [list_price] NOT IN (89.99, 109.99, 159.99)
ORDER BY [list_price];
GO

SELECT
    [product_id]
FROM production.stocks
WHERE [store_id] = 1 AND [quantity] >= 30;
GO

SELECT
*
FROM production.products
WHERE [product_id] IN (SELECT
                            [product_id]
                       FROM production.stocks
                       WHERE [store_id] = 1 AND [quantity] >= 30)
ORDER BY [product_name];
GO


-- BETWEEN Operator

SELECT
    [product_id],
    [product_name],
    [list_price]
FROM production.products
WHERE [list_price] BETWEEN 149.99 AND 199.99
ORDER BY [list_price];
GO

SELECT
    [product_id],
    [product_name],
    [list_price]
FROM production.products
WHERE [list_price] NOT BETWEEN 149.99 AND 199.99
ORDER BY [list_price];
GO

SELECT
    [order_id],
    [customer_id],
    [order_date],
    [order_status]
FROM sales.orders
WHERE [order_date] BETWEEN '20170115' AND '20170117'
ORDER BY [order_date];
GO

-- LIKE Operator

SELECT
    [customer_id],
    [first_name],
    [last_name]
FROM sales.customers
WHERE [last_name] LIKE 'z%'
ORDER BY [first_name];
GO

SELECT
    [customer_id],
    [first_name],
    [last_name]
FROM sales.customers
WHERE [last_name] LIKE '%er'
ORDER BY [first_name];
GO

SELECT
    [customer_id],
    [first_name],
    [last_name]
FROM sales.customers
WHERE [last_name] LIKE '_u%'
ORDER BY [first_name];
GO


SELECT
    [customer_id],
    [first_name],
    [last_name]
FROM sales.customers
WHERE [last_name] LIKE '[YZ]%'
ORDER BY [first_name];
GO

SELECT
    [customer_id],
    [first_name],
    [last_name]
FROM sales.customers
WHERE [last_name] LIKE '[A-C]%'
ORDER BY [first_name];
GO

SELECT
    [customer_id],
    [first_name],
    [last_name]
FROM sales.customers
WHERE [last_name] LIKE '[^A-X]%'
ORDER BY [first_name];
GO

SELECT
    [customer_id],
    [first_name],
    [last_name]
FROM sales.customers
WHERE [last_name] NOT LIKE 'A%'
ORDER BY [first_name];
GO

CREATE TABLE sales.feedbacks (
    feedback_id INT IDENTITY(1,1) PRIMARY KEY,
    [comment] VARCHAR(255) NOT NULL
);
GO

INSERT INTO sales.feedbacks ([comment])
VALUES('Can you give me 30% discount?'),
      ('May I get me 30USD off?'),
      ('Is this having 20% discount today?');
GO

SELECT * FROM sales.feedbacks;
GO

SELECT
    [feedback_id],
    [comment]
FROM sales.feedbacks
WHERE [comment] LIKE '%30%';
GO

SELECT 
    [feedback_id],
    [comment]
FROM sales.feedbacks
WHERE [comment] LIKE '%30!%%' ESCAPE '!';
GO
