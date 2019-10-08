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






















