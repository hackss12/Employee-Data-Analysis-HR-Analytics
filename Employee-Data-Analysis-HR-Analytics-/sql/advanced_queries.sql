USE employee_hr;

-- 1. Department-wise salary comparison with department average
SELECT e.Department,
       e.Full_Name,
       e.Salary,
       ROUND(avg_salary.Avg_Salary, 2) AS Department_Avg_Salary,
       CASE
           WHEN e.Salary > avg_salary.Avg_Salary THEN 'Above Average'
           WHEN e.Salary < avg_salary.Avg_Salary THEN 'Below Average'
           ELSE 'At Average'
       END AS Salary_Status
FROM employees e
JOIN (
    SELECT Department, AVG(Salary) AS Avg_Salary
    FROM employees
    GROUP BY Department
) avg_salary
ON e.Department = avg_salary.Department
ORDER BY e.Department, e.Salary DESC;

-- 2. Highest salary by job title
SELECT Job_Title, MAX(Salary) AS Highest_Salary
FROM employees
GROUP BY Job_Title
ORDER BY Highest_Salary DESC;

-- 3. Promotion trend by year
SELECT Last_Promotion_Year, COUNT(*) AS Employees_Promoted
FROM employees
WHERE Last_Promotion_Year IS NOT NULL
GROUP BY Last_Promotion_Year
ORDER BY Last_Promotion_Year DESC;

-- 4. Employee count by gender and department
SELECT Department, Gender, COUNT(*) AS Employee_Count
FROM employees
GROUP BY Department, Gender
ORDER BY Department, Employee_Count DESC;

-- 5. Bonus percentage vs salary relationship
SELECT Department,
       ROUND(AVG(Salary), 2) AS Avg_Salary,
       ROUND(AVG(Bonus_pct), 2) AS Avg_Bonus
FROM employees
GROUP BY Department
ORDER BY Avg_Salary DESC;

-- 6. Attrition risk summary
SELECT
    SUM(CASE WHEN Attrition_Status = 'Yes' THEN 1 ELSE 0 END) AS Total_Attrition,
    ROUND((SUM(CASE WHEN Attrition_Status = 'Yes' THEN 1 ELSE 0 END) / COUNT(*)) * 100, 2) AS Attrition_Rate_pct
FROM employees;
