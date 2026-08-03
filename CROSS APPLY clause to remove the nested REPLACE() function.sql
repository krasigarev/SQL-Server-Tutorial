CREATE TABLE companies(
   id INT IDENTITY PRIMARY KEY,
   name VARCHAR(255) NOT NULL
);

INSERT INTO companies (name)
VALUES
  ('ABC Corporation'),
  ('XYZ Inc.'),
  ('JK Pte Ltd');


-- Remove Replace function

-- Option 1

SELECT TRIM(REPLACE(REPLACE(REPLACE(name, 'Corporation', ''),  'Inc.', ''), 'Pte Ltd', '')) company_name
FROM dbo.companies;

-- Option 2

SELECT 
    TRIM(r3.name) company_name
FROM dbo.companies c  
CROSS APPLY (SELECT REPLACE(c.name, 'Corporation', '') name) AS r1
CROSS APPLY (SELECT REPLACE(r1.name, 'Inc.', '') name) AS r2
CROSS APPLY (SELECT REPLACE(r2.name, 'Pte Ltd', '') name) AS r3;
