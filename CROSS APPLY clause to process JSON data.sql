SELECT
    p.id,
    j.*
FROM product_json p  
CROSS APPLY OPENJSON (p.info) WITH 
        (
            Name NVARCHAR(100),
            Price DECIMAL(10,2),
            Category NVARCHAR(100)
        ) AS j;