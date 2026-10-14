USE employee_hr;

-- 1. Total employees by department
SELECT Department, COUNT(*) AS Employee_Count
FROM employees
GROUP BY Department
ORDER BY Employee_Count DESC;

-- 2. Average salary by department
SELECT Department, ROUND(AVG(Salary), 2) AS Avg_Salary
FROM employees
GROUP BY Department
ORDER BY Avg_Salary DESC;

-- 3. Employees by location
SELECT Location, COUNT(*) AS Employees
FROM employees
GROUP BY Location
ORDER BY Employees DESC;

-- 4. Attrition count by department
SELECT Department, COUNT(*) AS Attrition_Count
FROM employees
WHERE Attrition_Status = 'Yes'
GROUP BY Department
ORDER BY Attrition_Count DESC;

-- 5. Average experience by department
SELECT Department, ROUND(AVG(Experience_Years), 1) AS Avg_Experience_Years
FROM employees
GROUP BY Department
ORDER BY Avg_Experience_Years DESC;

-- 6. Top-performing employees by salary
SELECT Full_Name, Department, Job_Title, Salary, Performance_Score
FROM employees
WHERE Performance_Score IN ('A', 'A+', 'Outstanding')
ORDER BY Salary DESC
LIMIT 10;
