"""
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| name          | varchar |
+---------------+---------+
id is the primary key (column with unique values) for this table.
Each row of this table contains the id and the name of an employee in a company.
 

Table: EmployeeUNI

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| unique_id     | int     |
+---------------+---------+
(id, unique_id) is the primary key (combination of columns with unique values) for this table.
Each row of this table contains the id and the corresponding unique id of an employee in the company.
 

Write a solution to show the unique ID of each user, If a user does not have a unique ID replace just show null.

Return the result table in any order.
Approach
Join the Employees table with EmployeeUNI using id as the common key.
Use a LEFT JOIN to keep all employees, even if they do not have a unique ID.
Select unique_id and name to match the required output.
Return the result in any order since sorting is not required.
"""

-- answer: 
select u.unique_id, e.name from Employees as e
left join EmployeeUNI as u
on u.id = e.id;