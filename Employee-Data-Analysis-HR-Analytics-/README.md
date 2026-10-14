# Employee Data Analysis & HR Analytics Dashboard

## Project Overview
This project is a beginner-friendly HR analytics case study designed to demonstrate the full data analysis workflow from raw employee data to actionable business insights. It uses employee data to analyze workforce composition, salary trends, experience levels, and attrition risk. The project follows a realistic data pipeline: data collection, cleaning, SQL analysis, exploratory analysis, dashboarding, and recommendation drafting.

## Business Problem
Organizations often struggle to understand workforce patterns such as who is leaving, which departments are overstaffed or underpaid, and how compensation and performance correlate. Without a structured HR analytics workflow, business leaders may make decisions based on guesswork instead of evidence. This project addresses that problem by turning employee data into a clear story for management.

## Objectives
- Clean and prepare employee data for analysis.
- Explore key workforce patterns using Python.
- Answer business questions using SQL.
- Build a Power BI dashboard for reporting and decision-making.
- Derive actionable insights and business recommendations.

## Dataset
The project uses a synthetic employee dataset representing a mid-sized company. It includes employee demographics, department information, job titles, compensation, performance, hiring dates, location, and attrition status.

Key fields include:
- Employee_ID
- Full_Name
- Gender
- Age
- Department
- Job_Title
- Location
- Hire_Date
- Experience_Years
- Education_Level
- Performance_Score
- Salary
- Bonus_pct
- Manager_ID
- Attrition_Status
- Last_Promotion_Year
- Employee_Status

## Tools & Technologies
- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- MySQL
- SQL
- Power BI
- Excel/CSV
- Git & GitHub

## Data Cleaning
During the data cleaning stage, the following tasks are performed:
- Load raw employee CSV data.
- Remove duplicate records.
- Standardize text fields such as department names and job titles.
- Fix inconsistent date formats.
- Handle missing values using appropriate techniques.
- Validate salary and performance values.
- Prepare a clean dataset for analysis.

## Exploratory Data Analysis
The EDA step helps answer questions such as:
- Which department has the highest number of employees?
- What is the average salary by department?
- Which age group has the strongest representation?
- How does performance correlate with compensation?
- Are certain departments experiencing higher attrition?

This stage uses histograms, bar charts, box plots, and summary statistics to identify patterns.

## SQL Analysis
SQL is used to answer business-driven questions like:
- Average salary by department
- Highest-paid employees by job title
- Attrition rate by location
- Employee count by gender and department
- Salary comparison between top performers and average performers
- Promotion trends over time

The project includes SQL scripts for schema creation and analysis queries.

## Power BI Dashboard
A Power BI dashboard is created to visualize the cleaned dataset and present key metrics:
- Total Employees
- Average Salary
- Attrition Rate
- Department-Wise Workforce
- Top Departments by Salary
- Employee Distribution by Location
- Performance vs Salary Trends

This makes the project suitable for presentation to HR managers and business stakeholders.

## Key Insights
Possible insights discovered from the dataset may include:
- Engineering and Sales often have the highest employee count.
- Senior employees have higher salaries but may also face higher attrition risk in some departments.
- Departments with lower bonus percentages may experience lower retention.
- Performance rating and compensation are likely positively related.
- Certain locations or teams may have lower salary parity compared to others.

## Business Recommendations
- Review salary gaps between departments and locations.
- Focus retention strategies on high-impact departments with elevated attrition.
- Create career growth plans for employees with strong performance but limited promotion history.
- Use performance-based incentives to retain top talent.
- Improve training and onboarding for junior employees in high-turnover teams.

## Project Structure
```text
Employee-Data-Analysis/
│
├── data/
│   └── employee_data.csv
│
├── sql/
│   ├── create_database.sql
│   ├── analysis_queries.sql
│   └── advanced_queries.sql
│
├── python/
│   └── employee_analysis.ipynb
│
├── powerbi/
│   └── Employee_HR_Analytics.pbix
│
├── images/
│   ├── dashboard.png
│   └── analysis_charts.png
│
├── README.md
├── requirements.txt
└── .gitignore
```

## How to Run
1. Clone or download the project folder.
2. Open the terminal in the project directory.
3. Install Python dependencies:

```bash
pip install -r requirements.txt
```

4. Open the notebook in the `python/` folder and run the cells.
5. Import the SQL script in MySQL Workbench or MySQL CLI.
6. Open the Power BI file in the `powerbi/` folder to explore the dashboard.

## Author
This project is created for learning and portfolio purposes as a professional entry-level data analytics project.

---

This project demonstrates how HR data can be transformed into meaningful business insights and is suitable for GitHub portfolios, internship applications, and job interviews.
