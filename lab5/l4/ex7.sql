SELECT Dno, COUNT(CASE WHEN Salary > 25000 THEN 1 END) AS Employees
FROM EMPLOYEE
GROUP BY Dno HAVING COUNT(*) > 2;