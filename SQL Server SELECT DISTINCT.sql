SELECT
    DISTINCT city
from sales.customers
ORDER BY city;
GO

SELECT
    [city],
    [state]
FROM sales.customers
ORDER BY [city], [state];
GO

SELECT
    DISTINCT [city], [state]
FROM sales.customers;
GO

SELECT
    DISTINCT [phone]
FROM sales.customers
ORDER BY [phone];
GO

SELECT
    [city],
    [state],
    [zip_code]
FROM sales.customers
GROUP BY [city], [state], [zip_code]
ORDER BY [city], [state], [zip_code];
GO

SELECT
    DISTINCT [city], [state], [zip_code]
FROM sales.customers;
GO