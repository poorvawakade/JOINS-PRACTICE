# JOINS-PRACTICE
A set of join queries and their outputs.

**COMPANY** : CODTECH IT SOLUTIONS

**NAME** : POORVA WAKADE

**INTERN ID** : CT08KJD

**DOMAIN** : SQL.

**BATCH DURATION** : January 10th, 2025 to February 10th, 2025.

**MENTOR NAME** : 

**DESCRIPTION** : 

SQL Joins Explanation Report

Overview:
This report explains how SQL joins work and how they can be used to combine data from multiple tables meaningfully. Joins are essential for retrieving related data stored in different tables within a database.

Types of SQL Joins:

Inner Join:

Returns only the records that have matching values in both tables.

If a row in one table does not have a corresponding match in the other, it is excluded from the result.

Useful for extracting records with a common relationship.

Example:

SELECT employees.name, departments.department_name 
FROM employees 
INNER JOIN departments ON employees.department_id = departments.id;

Left Join (Left Outer Join):

Returns all records from the left table and the matching records from the right table.

If no match is found, NULL values are returned for columns from the right table.

Useful when you need all records from one table, even if they don’t have corresponding entries in the other.

Example:

SELECT employees.name, departments.department_name 
FROM employees 
LEFT JOIN departments ON employees.department_id = departments.id;

Right Join (Right Outer Join):

Returns all records from the right table and the matching records from the left table.

If no match is found, NULL values are returned for columns from the left table.

Useful when you need all records from the right table, regardless of whether they have corresponding matches in the left.

Example:

SELECT employees.name, departments.department_name 
FROM employees 
RIGHT JOIN departments ON employees.department_id = departments.id;

Full Join (Full Outer Join):

Returns all records when there is a match in either the left or right table.

If there is no match, NULL values appear for the missing side.

Useful when you need a complete view of records from both tables, including unmatched ones.

Example:

SELECT employees.name, departments.department_name 
FROM employees 
FULL JOIN departments ON employees.department_id = departments.id;

Importance of Joins in Data Management:

Joins help in combining data meaningfully from multiple tables.

They reduce redundancy by avoiding the need for duplicate data storage.

Joins improve query efficiency and simplify data retrieval.

They enable businesses to extract relevant insights by linking related information.

Use Cases of SQL Joins:

Inner Join: Useful for fetching only related data, such as listing employees and their respective departments.

Left Join: Helpful when retrieving all employees, even those who might not belong to a department.

Right Join: Beneficial when listing all departments, even those with no employees.

Full Join: Used when a complete dataset is required, showing both matched and unmatched records.

Conclusion:
SQL joins are fundamental for relational database queries, allowing efficient data integration. Depending on the requirements, different types of joins can be applied to obtain meaningful insights and ensure optimal data retrieval.

