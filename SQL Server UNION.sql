SELECT
    first_name,
    last_name
FROM sales.staffs
UNION
SELECT
    first_name,
    last_name
FROM sales.customers;
GO

SELECT
    first_name,
    last_name
FROM sales.staffs
UNION ALL
SELECT
    first_name,
    last_name
FROM sales.customers;
GO

SELECT
    first_name,
    last_name
FROM sales.staffs
UNION
SELECT
    first_name,
    last_name
FROM sales.customers
ORDER BY first_name, last_name;
GO
