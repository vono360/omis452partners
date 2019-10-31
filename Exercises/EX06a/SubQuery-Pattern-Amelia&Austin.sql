/*      Amelia and Austin Subqueries      */
SELECT DISTINCT ProjectID
FROM `project`
WHERE NOT EXISTS
	(SELECT *
		FROM project
WHERE NOT EXISTS (SELECT *
FROM assignment
;
