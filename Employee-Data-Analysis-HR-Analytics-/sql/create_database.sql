CREATE DATABASE IF NOT EXISTS employee_hr;
USE employee_hr;

CREATE TABLE IF NOT EXISTS employees (
    Employee_ID INT PRIMARY KEY,
    Full_Name VARCHAR(100),
    Gender VARCHAR(20),
    Age INT,
    Department VARCHAR(50),
    Job_Title VARCHAR(80),
    Location VARCHAR(50),
    Hire_Date DATE,
    Experience_Years INT,
    Education_Level VARCHAR(40),
    Performance_Score VARCHAR(20),
    Salary DECIMAL(12,2),
    Bonus_pct DECIMAL(5,2),
    Manager_ID INT,
    Attrition_Status VARCHAR(20),
    Last_Promotion_Year INT,
    Employee_Status VARCHAR(20)
);

-- Optional: sample insert statement for verification
-- INSERT INTO employees (...) VALUES (...);
