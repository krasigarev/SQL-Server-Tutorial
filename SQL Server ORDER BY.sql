SELECT
    first_name,
    last_name
FROM sales.customers
ORDER BY first_name;
GO

SELECT
    first_name,
    last_name
FROM sales.customers
ORDER BY first_name ASC;
GO

SELECT
    first_name,
    last_name
FROM sales.customers
ORDER BY first_name DESC;
GO

SELECT
    city,
    first_name,
    last_name
FROM sales.customers
ORDER BY city, first_name;
GO


SELECT
    city,
    first_name,
    last_name
FROM sales.customers
ORDER BY city DESC, first_name ASC;
GO

SELECT 
    city,
    first_name,
    last_name
FROM sales.customers
ORDER BY [state];
GO

SELECT
    first_name,
    last_name
FROM sales.customers
ORDER BY LEN(first_name) desc;
GO

SELECT
    first_name,
    last_name
FROM sales.customers
ORDER BY 1, 2;
GO