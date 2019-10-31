/*      Amelia and Austin Subqueries      */
SELECT DISTINCT ProjectID
FROM `project`
WHERE NOT EXISTS
	(SELECT *
		FROM `project` JOIN assignment 
     		ON assignment.ProjectID = `project`.`ProjectID`
     	WHERE project.Department = 'Finance'
     	AND NOT EXISTS( SELECT *
                       FROM project
                       WHERE EmployeeNumber = 1))
