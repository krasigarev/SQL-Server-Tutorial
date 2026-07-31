SELECT
*
FROM pm.members m  
FULL OUTER JOIN pm.projects p ON p.id = m.project_id;
GO

SELECT
    m.name AS member,
    p.title AS project
FROM pm.members m 
FULL OUTER JOIN pm.projects p ON p.id = m.project_id
WHERE m.id IS NULL OR p.id IS NULL;
GO

