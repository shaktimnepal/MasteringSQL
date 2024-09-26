Problem Statement:

Find the employees who joined in the last 6 months.
Sample Input Data:
Employees Table:
| EmployeeID | Name | JoinDate   |
|------------|------|------------|
| 1          | John | 2024-01-15 |
| 2          | Jane | 2024-03-01 |
| 3          | Sarah| 2023-08-25 |
| 4          | Mark | 2024-07-01 |
Expected Output:
| EmployeeID | Name |
|------------|------|
| 4          | Mark |

  
Solution:

SELECT EmployeeID, Name
FROM Employees
WHERE JoinDate >= CURRENT_DATE - INTERVAL '6 months';
