/*********************************************************************/
/*                      ExerciseEX04 Queries                         */
/*                    Austin Nelson and Amelia                       */
/*                                                                   */
/*********************************************************************/

/* *** SQL-Query-CH03-1 Austin and Amelia *** */
SELECT ProjectID, ProjectName, Department, MaxHours, StartDate, EndDate
FROM PROJECT;

/* *** SQL-Query-CH03-2 Austin and Amelia *** */
SELECT * 
FROM PROJECT;

/* *** SQL-Query-CH03-3 Austin and Amelia *** */
SELECT ProjectName, Department, MaxHours
FROM PROJECT;

/* *** SQL-Query-CH03-4 Austin and Amelia *** */
SELECT ProjectName, MaxHours, Department
FROM PROJECT;

/* *** SQL-Query-CH03-5 Austin and Amelia *** */
SELECT Department
FROM PROJECT;

/* *** SQL-Query-CH03-6 Austin and Amelia *** */
SELECT DISTINCT Department
FROM PROJECT;

/* *** SQL-Query-CH03-7 Austin and Amelia *** */
SELECT * 
FROM PROJECT
WHERE Department= 'Finance';

/* *** SQL-Query-CH03-8 Austin and Amelia *** */
SELECT * 
FROM PROJECT
WHERE StartDate = '05/10/2017';

/* *** SQL-Query-CH03-9 Austin and Amelia *** */
SELECT *
FROM PROJECT
WHERE MaxHours > 135;

/* *** SQL-Query-CH03-10 Austin and Amelia *** */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE Department = 'Accounting';

/* *** SQL-Query-CH03-11 Austin and Amelia *** */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
ORDER BY Department;

/* *** SQL-Query-CH03-12 Austin and Amelia *** */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
ORDER BY Department DESC;

/* *** SQL-Query-CH03-13 Austin and Amelia *** */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
ORDER BY Department DESC, LastName ASC;

/* *** SQL-Query-CH03-14 Austin and Amelia *** */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE Department = 'Accounting'
    AND OfficePhone = '360-285-8430';

/* *** SQL-Query-CH03-15 Austin and Amelia *** */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE Department = 'Accounting'
    OR  OfficePhone = '360-285-8430';

/* *** SQL-Query-CH03-16 Austin and Amelia *** */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE Department = 'Accounting'
    AND NOT OfficePhone = '360-285-8430';

/* *** SQL-Query-CH03-17 Austin and Amelia *** */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE Department IN ('Administration', 'Finance', 'Accounting');

/* *** SQL-Query-CH03-18 Austin and Amelia *** */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE Department NOT IN ('Administration', 'Finance', 'Accounting');

/* *** SQL-Query-CH03-19 Austin and Amelia *** */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE EmployeeNumber >=2
    AND EmployeeNumber <= 5;

/* *** SQL-Query-CH03-20 Austin and Amelia *** */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE EmployeeNumber BETWEEN 2 AND 5;

/* *** SQL-Query-CH03-21 Austin and Amelia *** */
SELECT * 
FROM PROJECT
WHERE ProjectName LIKE '2017 Q_ Portfolio Analysis';

/* *** SQL-Query-CH03-22 Austin and Amelia *** */
SELECT * 
FROM EMPLOYEE
WHERE OfficePhone LIKE '360-287-88__';

/* *** SQL-Query-CH03-23 Austin and Amelia *** */
SELECT * 
FROM EMPLOYEE
WHERE OfficePhone LIKE '360-387-88%';

/* *** SQL-Query-CH03-24 Austin and Amelia *** */
SELECT * 
FROM EMPLOYEE
WHERE Department LIKE '%ing';

/* *** SQL-Query-CH03-25 Austin and Amelia *** */
SELECT * 
FROM EMPLOYEE
WHERE Department NOT LIKE '%ing';

/* *** SQL-Query-CH03-26 Austin and Amelia *** */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE OfficePhone IS NULL;

/* *** SQL-Query-CH03-27 Austin and Amelia *** */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE OfficePhone IS NOT NULL;

/* *** SQL-Query-CH03-28 Austin and Amelia *** */
SELECT COUNT(*)
FROM PROJECT;

/* *** SQL-Query-CH03-29 Austin and Amelia *** */
SELECT COUNT(*) AS NumberOfProjects
FROM PROJECT;

/* *** SQL-Query-CH03-30 Austin and Amelia *** */
SELECT COUNT(Department) AS NumberOfDepartments
FROM PROJECT;

/* *** SQL-Query-CH03-31 Austin and Amelia *** */
SELECT COUNT(DISTINCT Department) AS NumberOfDepartments
FROM PROJECT;

/* *** SQL-Query-CH03-32 Austin and Amelia *** */
SELECT SUM(MaxHours) AS TotalMaxHours,
    AVG(MaxHours) AS AverageMaxHours,
    MIN(MaxHours) AS MinimumMaxHours,
    MAX(MaxHours) AS MaximumMaxHours
FROM PROJECT
WHERE ProjectID <= 1200;

/* *** SQL-Query-CH03-33 Austin and Amelia *** */
SELECT ProjectName, COUNT(*)
FROM PROJECT;

/* *** SQL-Query-CH03-34 Austin and Amelia *** */
SELECT * 
FROM PROJECT
WHERE MaxHours > AVG(MaxHours);

/* *** SQL-Query-CH03-35 Austin and Amelia *** */
SELECT ProjectID, ProjectName, MaxHours, (24.50* MaxHours) AS MaxProjectCost
FROM PROJECT;

/* *** SQL-Query-CH03-36 Austin and Amelia *** */
SELECT Department, COUNT(*) AS NumberOfEmployees
FROM EMPLOYEE
GROUP BY Department;

/* *** SQL-Query-CH03-37 Austin and Amelia *** */
SELECT Department, COUNT(*) AS NumberOfEmployees
FROM EMPLOYEE
GROUP BY Department
HAVING COUNT(*) > 1;

/* *** SQL-Query-CH03-38 Austin and Amelia *** */
SELECT Department, COUNT(*) AS NumberOfEmployees
FROM EMPLOYEE
WHERE EmployeeNumber <= 10 
GROUP BY Department
HAVING COUNT(*) > 1; 

/* *** SQL-Query-CH03-39 Austin and Amelia *** */
SELECT FirstName, LastName
FROM EMPLOYEE
WHERE EmployeeNumber IN (6, 10, 11, 16, 17);

/* *** SQL-Query-CH03-40 Austin and Amelia *** */
SELECT DISTINCT EmployeeNumber
FROM ASSIGNMENT
WHERE HoursWorked > 50;

/* *** SQL-Query-CH03-41 Austin and Amelia *** */
SELECT FirstName, LastName
FROM EMPLOYEE
WHERE EmployeeNumber IN
    (SELECT DISTINCT EmployeeNumber
    FROM ASSIGNMENT
    WHERE HoursWorked > 50);

/* *** SQL-Query-CH03-42 Austin and Amelia *** */
SELECT DISTINCT ProjectID
FROM PROJECT
WHERE Department = 'Accounting';

/* *** SQL-Query-CH03-43 Austin and Amelia *** */
SELECT DISTINCT EmployeeNumber
FROM ASSIGNMENT
WHERE HoursWorked > 40 
    AND ProjectID IN
        (SELECT ProjectID
        FROM PROJECT
        WHERE Department = 'Accounting');

/* *** SQL-Query-CH03-44 Austin and Amelia *** */
SELECT FirstName, LastName
FROM EMPLOYEE
WHERE EmployeeNumber IN 
    (SELECT DISTINCT EmployeeNumber
    FROM ASSIGNMENT
    WHERE HoursWorked > 40
    AND ProjectID IN 
            (SELECT ProjectID 
            FROM PROJECT
            WHERE Department = 'Accounting'));

/* *** SQL-Query-CH03-45 Austin and Amelia *** */
SELECT FirstName, LastName, ProjectID, HoursWorked
FROM EMPLOYEE, ASSIGNMENT;

/* *** SQL-Query-CH03-46 Austin and Amelia *** */
SELECT FirstName, LastName, ProjectID, HoursWorked
FROM EMPLOYEE, ASSIGNMENT
WHERE EMPLOYEE.EmployeeNumber = ASSIGNMENT.EmployeeNumber;

/* *** SQL-Query-CH03-47 Austin and Amelia *** */
SELECT FirstName, LastName, ProjectID, HoursWorked
FROM EMPLOYEE, ASSIGNMENT
WHERE EMPLOYEE.EmployeeNumber = ASSIGNMENT.EmployeeNumber
ORDER BY EMPLOYEE.EmployeeNumber, ProjectID;
/* *** SQL-Query-CH03-48 Austin and Amelia *** */
/* *** SQL-Query-CH03-49 Austin and Amelia *** */
/* *** SQL-Query-CH03-50 Austin and Amelia *** */
/* *** SQL-Query-CH03-51 Austin and Amelia *** */
/* *** SQL-Query-CH03-52 Austin and Amelia *** */
/* *** SQL-Query-CH03-53 Austin and Amelia *** */