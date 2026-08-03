SELECT 
* 
FROM production.products
WHERE product_name LIKE 'T%';
GO

SELECT 
* 
FROM production.products
WHERE product_name LIKE '%2018%';
GO

SELECT 
* 
FROM production.products
WHERE product_name LIKE '%Frame%' AND list_price > 1000;
GO


SELECT 
* 
FROM production.products
WHERE product_name LIKE '%Carbon%' AND list_price > 1500;
GO