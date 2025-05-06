/*
Table: Employee

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| department  | varchar |
| managerId   | int     |
+-------------+---------+
id is the primary key (column with unique values) for this table.
Each row of this table indicates the name of an employee, their department, and the id of their manager.
If managerId is null, then the employee does not have a manager.
No employee will be the manager of themself.
 

Write a solution to find managers with at least five direct reports.

Return the result table in any order.
*/

-- Answer:
-- First step: Analyse:
# Write your MySQL query statement below
SELECT a.name as manager, b.name as employee FROM EMPLOYEE a
join Employee b
on a.id = b.managerId;


-- Then:
# Write your MySQL query statement below
SELECT a.name FROM EMPLOYEE a
join Employee b
on a.id = b.managerId
group by b.managerId
having count(*) >= 5;