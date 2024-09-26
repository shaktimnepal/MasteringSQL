Problem Statement:
  
Retrieve the second highest salary from the employees table.
Sample Input Data:
Employees Table:
| EmployeeID | Name | Salary |
|------------|------|--------|
| 1          | John | 5000   |
| 2          | Jane | 7000   |
| 3          | Mark | 6000   |
| 4          | Sarah| 8000   |
Expected Output:
| Salary |
|--------|
| 7000   |

  
Solution:

SELECT Salary
FROM (
    SELECT Salary, DENSE_RANK() OVER (ORDER BY Salary DESC) AS rank
    FROM Employees
) AS ranked_salaries
WHERE rank = 2;
