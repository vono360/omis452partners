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
