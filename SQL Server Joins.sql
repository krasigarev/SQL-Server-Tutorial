-- Left Join

SELECT 
    c.id candidate_id,
	c.fullname candidate_name,
	e.id employee_id,
	e.fullname employee_name
FROM hr.candidates AS c 
LEFT JOIN hr.employees as e  ON e.fullname = c.fullname;
GO

SELECT 
    c.id candidate_id,
	c.fullname candidate_name,
	e.id employee_id,
	e.fullname employee_name
FROM hr.candidates AS c 
LEFT JOIN hr.employees as e  ON e.fullname = c.fullname
WHERE e.[id] IS NULL;
GO

-- Right Join 

SELECT 
    c.id candidate_id,
	c.fullname candidate_name,
	e.id employee_id,
	e.fullname employee_name
FROM hr.candidates AS c 
RIGHT JOIN hr.employees as e  ON e.fullname = c.fullname;
GO

SELECT 
    c.id candidate_id,
	c.fullname candidate_name,
	e.id employee_id,
	e.fullname employee_name
FROM hr.candidates AS c 
RIGHT JOIN hr.employees as e  ON e.fullname = c.fullname
WHERE c.[id] IS NULL;
GO


-- full join

SELECT 
    c.id candidate_id,
	c.fullname candidate_name,
	e.id employee_id,
	e.fullname employee_name
FROM hr.candidates AS c 
FULL JOIN hr.employees as e  ON e.fullname = c.fullname;
GO


SELECT 
    c.id candidate_id,
	c.fullname candidate_name,
	e.id employee_id,
	e.fullname employee_name
FROM hr.candidates AS c 
FULL JOIN hr.employees as e  ON e.fullname = c.fullname
WHERE c.ID IS NULL OR E.id IS NULL;
GO
